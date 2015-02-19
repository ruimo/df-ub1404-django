FROM ubuntu:14.04
MAINTAINER Shisei Hanai<ruimo.uno@gmail.com>

RUN apt-get update
RUN apt-get -y install python3-pip libpq-dev
RUN pip3 install psycopg2
RUN pip3 install Django==1.7.4

EXPOSE 9080

ADD profile /profile
ADD app /app

CMD python3 /app/manage.py migrate && python3 /app/manage.py runserver 0.0.0.0:9080
