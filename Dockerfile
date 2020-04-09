FROM rackspacedot/python37
COPY ./mysite /opt/
WORKDIR /opt
RUN  pip install -r requirements.txt
EXPOSE 8080
COPY mysite/entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["python manage.py runserver 0.0.0.0:8080"]

