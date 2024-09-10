FROM ubuntu

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y curl
RUN apt-get install -y  python3 && \
    apt install  -y python3-pip
RUN apt install python3-django -y

    
    

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]