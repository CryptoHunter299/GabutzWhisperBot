FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN virtualenv venv
RUN venv/bin/pip3 install -U -r requirements.txt

COPY . /app

#set a default command

CMD venv/bin/python3 bot.py
