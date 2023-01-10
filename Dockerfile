FROM python:3.8.2-slim-buster
FROM redis:6-alpine
COPY redis.conf .

RUN apt -qq update && apt -qq install -y git ffmpeg
COPY . .
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["redis-server", "./redis.conf"]
CMD python3 main.py
