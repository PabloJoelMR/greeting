FROM python:3.8-slim-buster

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV first_name=${first_name}
ENV last_name=${last_name}

ENTRYPOINT ["python", "/app/greet.py"]