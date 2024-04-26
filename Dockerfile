FROM python:3.11-slim

RUN apt-get update
RUN apt-get install ffmpeg

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -U yt-dlp[default] ffmpeg-python

WORKDIR /recordurbate
COPY ./recordurbate .

CMD ["tail", "-f", "/dev/null"]
