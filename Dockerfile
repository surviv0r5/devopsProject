# FROM python:3.7-alpine

# COPY . .
# WORKDIR ./


# RUN apt update -y && pip install  -r requirements.txt
# CMD ["python3", "app.py"]

FROM python:3.7-slim

WORKDIR ./
COPY . .

RUN apt update -y && \pip install -r requirements.txt

CMD ["python", "app.py"]