#FROM ubuntu:22.04
#
# RUN apt-get update -y
# RUN apt-get install -y python3-pip
# COPY ./backend/ /backend
# WORKDIR /backend
# COPY ./requirements.txt /backend/requirements.txt
# RUN pip install -r requirements.txt
# COPY . .
# EXPOSE 3000
# ENTRYPOINT ["/backend/__init__.py"]
# CMD ["flask", "run"]

FROM python:3.10
LABEL Author="Neil Jain"

ENV FLASK_APP "backend/app.py"

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ADD . /app

EXPOSE 5000

CMD flask run --host=0.0.0.0