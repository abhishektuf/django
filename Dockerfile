FROM rackspacedot/python37
COPY ./mysite /opt/
WORKDIR /opt
RUN  pip install -r requirements.txt && python manage.py makemigrations && python manage.py migrate
EXPOSE 8080
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
