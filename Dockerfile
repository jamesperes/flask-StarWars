FROM python:3.7.2-stretch

MAINTAINER James Peres "jame.peres.s@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev && \
    pip install --upgrade pip

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]