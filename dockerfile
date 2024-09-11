FROM python:3.9.20-alpine3.20 AS builder

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
	
	#Stage 2

FROM gcr.io/distroless/python3

WORKDIR /app
COPY --from=builder /app /app

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
