FROM rackspacedot/python37
COPY ./mysite /opt/
CMD ["sleep","3600"]
