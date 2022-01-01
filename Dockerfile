FROM python:3.9


WORKDIR /app

ADD requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["gunicorn","main:app","-b","0.0.0.0:8080"]