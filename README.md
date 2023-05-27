# E-ticket Booking System

This project was a deep dive into the intricacies of Django web framework and Django REST framework, focusing on building an efficient and secure E-ticket booking system. From the outset, I embraced containerization by running the entire Django environment within a Linux kernel image using Docker.

## Project Highlights

- **Exploring Django and Django REST framework**: I delved into the capabilities of Django web framework and Django REST framework, gaining a comprehensive understanding of their features and functionalities.
- **Containerized Application**: I learned how to containerize the application, leveraging Docker to encapsulate the entire Django environment within a Linux kernel image.
- **Data Modeling and Database Integration**: I mastered the art of creating data models and utilizing Django ORM to establish a seamless connection with PostgreSQL. I successfully created tables from model classes and implemented Django templates.
- **Enhancing the Admin User View**: I customized the admin user view by incorporating custom reports and graphs, providing administrators with valuable insights and analytics.
- **Implementing Signals/Triggers**: I developed signals/triggers for user and admin users, notifying them of status changes within specific data object parameters. This feature enhanced the system's real-time responsiveness and user experience.
- **User Authentication and Authorization**: I implemented a robust user authentication and authorization system from scratch, leveraging role-based mechanisms and authentication libraries to enhance the system's security.
- **Unit Testing**: I conducted comprehensive unit tests on each individual function using Django's unittest module, ensuring the reliability and accuracy of the implemented functionalities.
- **Caching Mechanism**: I employed caching techniques, utilizing Redis to store frequently accessed values in user memory. This significantly reduced the time taken to fetch information from the database, improving the overall system effectiveness.
- **Comprehensive Database Design**: I meticulously designed a database schema that addressed all the essential aspects of the real-market requirements for a movie ticket booking system.
- **Asynchronous Task Queue**: I implemented a task queue to handle asynchronous tasks such as sending user registration confirmation emails, booking confirmation emails, and notifications for status changes. The integration of signals and task queues presented a unique challenge.
- **Swagger Documentation**: After developing all the APIs, I created comprehensive Swagger documentation to facilitate easy understanding and usage of the system's endpoints.
- **User-Defined Commands**: I learned how to create user-defined commands in Django, enabling the execution of custom tasks and further enhancing the system's functionality.
- **PDF Generation and Delivery**: I implemented an autonomous task that generated PDFs based on a generic ticket template (HTML/CSS) and sent them to the task queue for delivery to users. This ensured a seamless ticketing experience.
- **Handling Race Conditions**: I tackled the challenge of race conditions when there was only one ticket available and multiple users simultaneously attempted to book it. Through meticulous Django model creation, I ensured data integrity and a smooth user experience.

## Technologies Used

- Django
- Django REST framework
- Docker
- PostgreSQL
- Redis
- Swagger
- HTML/CSS
- Python

## Conclusion

This E-ticket booking system project provided me with an immersive learning experience in Django web development, database design, asynchronous task handling, and system security. By exploring and implementing various functionalities, including user authentication, caching, PDF generation, and effective database modeling, I significantly enhanced my skills and understanding of building robust and scalable web applications.
