FROM python:3.9-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /app/

EXPOSE 8080

CMD ["python", "app.py"]
