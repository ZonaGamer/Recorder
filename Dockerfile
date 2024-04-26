FROM python:3.11-slim

RUN sudo apt-get update

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -U yt-dlp[default] ffmpeg-python
RUN sudo apt-get install ffmpeg

WORKDIR /recordurbate
COPY ./recordurbate .

CMD ["tail", "-f", "/dev/null"]
