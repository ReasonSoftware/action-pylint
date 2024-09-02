FROM python:3.12.5-slim-bookworm

WORKDIR /

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY pyproject.toml .
COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
