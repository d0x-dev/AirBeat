FROM python:3.10-slim-bullseye

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && \
apt-get install -y --no-install-recommends \
ffmpeg \
git && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip setuptools wheel && \
pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 10000

CMD bash -c "python3 web.py & python3 -m Airbeats"

