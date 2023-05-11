FROM python:3.7-slim-buster 

COPY . /app
WORKDIR /app

RUN apt update -y

RUN apt update -y && pip install  -r requirements.txt
CMD ["python3", "app.py"]