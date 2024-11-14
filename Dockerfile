FROM python:3.12.2

WORKDIR /neural-api


COPY requirements.txt .
COPY ./src ./src

RUN pip install -r requirements.txt

CMD [ "python", "./src/python-api-docker.py" ]