FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install -U -r requirements.txt

COPY . /app

#set a default command

CMD python3 bot.py
