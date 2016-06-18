# Instructions copied from - https://hub.docker.com/_/python/
FROM ubuntu:14.04

RUN sudo apt-get update && apt-get -y install python-pip

RUN sudo pip install flask==0.10.1

COPY . /usr/bin

WORKDIR /usr/bin

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
