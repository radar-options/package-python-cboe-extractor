FROM python:3.9-slim-buster AS builder

ARG FURY_URL
ARG FURY_AUTH

WORKDIR /app

RUN python -m pip install --upgrade pip && \
    python -m pip install poetry==1.1.15 && \
    poetry config repositories.fury $FURY_URL && \
    poetry config http-basic.fury $FURY_AUTH $FURY_AUTH && \
    python -m venv /venv

COPY poetry.lock pyproject.toml ./

RUN . /venv/bin/activate && poetry install --no-dev --no-root

COPY . .

RUN . /venv/bin/activate && poetry build

FROM python:3.9-slim-buster

WORKDIR /app

COPY --from=builder /venv /venv
COPY --from=builder /app/dist .

RUN . /venv/bin/activate && pip install *.whl && \
    rm -f *.whl && \
    rm -f *.tar.gz