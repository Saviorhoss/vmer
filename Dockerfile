FROM python:3.8.6

RUN apt -qq update && apt -qq install -y git ffmpeg
COPY . .
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD python3 main.py
