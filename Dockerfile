FROM python:3.8-bullseye
WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends \
gcc python3-dev default-libmysqlclient-dev pkg-config \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt

EXPOSE 5002
CMD ["python", "app.py"]
