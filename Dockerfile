FROM python:3.9

# setup okteto message
COPY bashrc /root/.bashrc

WORKDIR /usr/src/app

RUN apt -qq update && apt -qq install -y git ffmpeg

RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY main.py main.py

EXPOSE 8080

CMD ["python", "main.py" ]
