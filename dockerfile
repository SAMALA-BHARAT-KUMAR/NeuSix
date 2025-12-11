FROM python:latest
WORKDIR /app
COPY . .
CMD ["python","bharat.py"]