FROM python:latest
WORKDIR /code
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY load_db.py load_db.py
CMD ["python", "-u", "load_db.py"]
