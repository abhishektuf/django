FROM rackspacedot/python37
COPY ./mysite /opt/
WORKDIR /opt
RUN  pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["entrypoint.sh"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
