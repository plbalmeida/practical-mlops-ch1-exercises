from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return str(add(1, 1))


def add(x, y):
    return x + y


if __name__ == "__main__":
    app.run()
