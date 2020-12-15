FROM python:3.7-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN apt-get update
RUN pip install -r requirements.txt

COPY app.py .

ENTRYPOINT [ "uvicorn", "--host", "0.0.0.0", "--port", "8080", "app:app" ]