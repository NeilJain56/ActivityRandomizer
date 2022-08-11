# docker image pulling from docker hub
FROM python:3.10

LABEL Author="Neil Jain"

# setup environment variables
ENV FLASK_APP "backend/app.py"

# make directory on container computer
RUN mkdir /app

# set the working directory (directory where the app is)
WORKDIR /app

# install pip
RUN pip install --upgrade pip

# move requirements.txt to container computer so we can run pip install
COPY requirements.txt requirements.txt


RUN pip install -r requirements.txt

# move all other project files to /app directory in container
ADD . /app

# expose functionality of app on port 5000
EXPOSE 5000

# command to run the app
CMD flask run --host=0.0.0.0