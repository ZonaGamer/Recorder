FROM python:3.11-slim

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -U yt-dlp[default] ffmpeg-python

WORKDIR /recordurbate
COPY ./recordurbate .

CMD ["python3", "Recordurbate.py", "help"]