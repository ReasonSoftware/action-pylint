FROM python:3.14.0-slim-trixie

WORKDIR /

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY pyproject.toml .
COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
