FROM python:3.13.0-slim-bookworm

WORKDIR /

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY pyproject.toml .
COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
