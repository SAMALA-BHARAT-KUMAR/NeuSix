FROM python:3.1.0
WORKDIR /app
COPY . /bharat.py
RUN pip install -r requirement.txt
CMD ["python3", "bharat.py"]