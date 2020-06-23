FROM python:3-slim
EXPOSE 3000
WORKDIR /opt
RUN apt update && \
    apt install -y build-essential python-dev && \
    pip install uwsgi liteshort && \
    apt autoremove -y build-essential python-dev && \
    rm -rf /var/lib/apt/lists/*
COPY . .
CMD uwsgi --ini liteshort.ini
