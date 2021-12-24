FROM python:3.8-slim-buster
EXPOSE 8000
COPY files/index.html /root/
WORKDIR /root
CMD [ "python3", "-m", "http.server"  ]
