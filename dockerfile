FROM python:alpine

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app
COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD cd proj

ENTRYPOINT ["python3"]
CMD [ "manage.py", "runserver", "0.0.0.0:8000"]
