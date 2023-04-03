FROM python:3.10.5-slim-buster

WORKDIR /app

COPY requirements.txt ./
RUN pip3 install python-telegram-bot python-dotenv --upgrade
COPY . .

CMD ["python3", "echobot.py"]
