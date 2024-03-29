from flask import Flask, request, jsonify


app = Flask(__name__)


@app.route('/', methods=['POST'])
def index():
    data = request.get_json()
    x = data.get('x')
    y = data.get('y')

    if not isinstance(x, (int, float)) or not isinstance(y, (int, float)):
        return jsonify(result=None, error="Invalid input"), 400

    return jsonify(result=add(x, y))


def add(x, y):
    return x + y


if __name__ == "__main__":
    app.run()
