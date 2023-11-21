FROM python:3.9.18-slim-bullseye

RUN adduser --system --no-create-home anon

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./project .

EXPOSE 8000

USER anon
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

