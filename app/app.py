# app.py

from flask import Flask

app = Flask(__name__)


@app.route('/')
def first_pipeline():
    return 'Welcome to my first CI/CD Pipeline!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)
