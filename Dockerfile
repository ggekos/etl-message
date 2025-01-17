FROM python:3.8.8

RUN apt-get -y update

WORKDIR /home/app

COPY requirements.txt requirements.txt
COPY ermez ermez

RUN pip3 install -r requirements.txt

ENV PYTHONPATH /home/app
ENV PYTHONUNBUFFERED definitely

CMD ["python3", "-u", "ermez/main.py"]
