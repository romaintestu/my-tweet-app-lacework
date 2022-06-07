# Use Alpine as base test
#FROM alpine:3.10
FROM alpine:2.10.7-r0 

USER root

# Maintainer
LABEL maintainer="andreas@lacework.net"

RUN apk add --no-cache py3-pip

COPY ./app /app

WORKDIR /app

RUN pip3 install --no-cache-dir --requirement ./requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]
