FROM python:3.12.1-alpine3.18

WORKDIR /

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY pyproject.toml .
COPY entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
