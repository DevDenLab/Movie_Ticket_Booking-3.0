from __future__ import absolute_import
from django.core.mail import send_mail
from Movie_booking_app.models.statuses import PaymentStatus
from Movie_tickets_booking.settings import EMAIL_HOST_USER
from celery import shared_task
from django.template.loader import render_to_string
from django.http import HttpResponse
import weasyprint
from django.core.mail import EmailMessage
from django.conf import settings
import base64
import io
import qrcode
import qrcode.image.svg
from qrcode.image.styledpil import StyledPilImage
from qrcode.image.styles.colormasks import RadialGradiantColorMask

# # from django.core.mail import EmailMultiAlternatives

# # from django.core.mail import EmailMultiAlternatives

# # from weasyprint import HTML, CSS
# # from django.http import JsonResponse


# from django.template.loader import render_to_string

# # from django.core.mail import EmailMultiAlternatives
# # from weasyprint import HTML


def send_mail_to(subject, message, receivers):
    send_mail(subject, message, EMAIL_HOST_USER, [receivers], fail_silently=False)


import logging


logger = logging.getLogger(__name__)
# #! basic email making has been prepared,so in this email just get all the info of booking and send it to user in image format with ticket and qr code.
# #! arguments=booking_id,user_id,movie,cinema,cinemahall,show,seats,total_amount,payment_mode,booking_status,show_start_time and end time,etcc...
@shared_task(name="send_mail_to")
def email_task_async(booking_id, user_email, payment_status, ticket_info):
    if payment_status == PaymentStatus.objects.get(id=2).id:
        subject = "You E-ticket Cancelled"
        email = EmailMessage(
            subject,
            from_email=settings.EMAIL_HOST_USER,
            to=user_email,
        )
        email.send()
    elif payment_status == PaymentStatus.objects.get(id=3).id:
        context = {
            "user": ticket_info["user"],
            "movie": ticket_info["movie"],
            "cinema": ticket_info["cinema"],
            "cinemahall": ticket_info["cinemahall"],
            "show": ticket_info["show"],
            "show_time": ticket_info["show"],
            # "seats": ticket_info.seats,
        }
        qr = qrcode.QRCode(error_correction=qrcode.constants.ERROR_CORRECT_L)
        # factory = qrcode.image.svg.SvgImage
        qr.add_data(context)
        img = qr.make_image(
            image_factory=StyledPilImage, color_mask=RadialGradiantColorMask()
        )
        # img.save("some_file.png")
        buff = io.BytesIO()
        img.save(buff, "jpeg")
        # svg = buff.getvalue().decode()
        svg = base64.b64encode(buff.getvalue()).decode()
        html = render_to_string(
            "ticket.html",
            {
                "cinema": ticket_info["cinema"],
                "movie": ticket_info["movie"],
                "name": ticket_info["user"],
                "seat": ticket_info["seats"],
                "time": ticket_info["show_time"],
                "svg": svg,
            },
        )
        print("tickets=>>>")
        print(ticket_info["seats"])
        logger.info("'tickets=>>>'")
        logger.info(ticket_info["seats"])
        response = HttpResponse(content_type="application/pdf")
        response["Content-Disposition"] = "tatva.pdf"

        pdf = weasyprint.HTML(string=html).write_pdf(
            stylesheets=[weasyprint.CSS("static/css/style.css")]
        )

        subject = "You E-ticket"
        email = EmailMessage(
            subject,
            body=pdf,
            from_email=settings.EMAIL_HOST_USER,
            to=["tatvajoshi0@gmail.com"],
        )
        email.attach("1.pdf", pdf, "application/pdf")
        email.content_subtype = "pdf"
        email.encoding = "us-ascii"
        email.send()
