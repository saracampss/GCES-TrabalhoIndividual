FROM python:3.8
ENV PYTHONUNBUFFERED=1  

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install -r ./requirements.txt

COPY . /app
CMD ["python3", "src/main.py"]