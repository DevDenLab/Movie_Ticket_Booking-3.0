FROM ubuntu

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
# RUN apk add --update --no-cache postgresql-client jpeg-dev
# RUN apk add --update --no-cache --virtual .tmp-build-deps \ 
#     gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
# RUN apk add --update --no-cache --virtual .tmp-build-deps \
#     gcc libc-dev linux-headers postgresql-dev \
#     && apk add libffi-dev
# RUN apk add py3-pip gcc musl-dev python3-dev pango zlib-dev jpeg-dev openjpeg-dev g++ libffi-dev
# RUN apk add --update python python-dev py-pip build-base
RUN set -xe \
    && apt-get update \
    && apt-get install python3-pip postgresql-server-dev-all gcc python3-dev libgtk-3-dev -y
# RUN apt-get install  -y
RUN pip install --upgrade pip
RUN pip install qrcode
RUN pip install -r /requirements.txt
# RUN apk del .tmp-build-deps

RUN mkdir /app
COPY ./Movie_tickets_booking /app
WORKDIR /app