from flask import Flask, request, jsonify
import os

app = Flask(__name__)

@app.route('/')
def home():
    response = os.environ["RESPONSE"]
    return response


if __name__ == '__main__':
    port = os.environ["PORT"]
    app.run(host="0.0.0.0", port=port, debug=True)