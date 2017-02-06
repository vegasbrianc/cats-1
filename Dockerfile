FROM python:3.5-alpine

RUN pip install flask==0.10.1

COPY . /usr/bin

WORKDIR /usr/bin

EXPOSE 5000

CMD ["python", "./app.py"]
