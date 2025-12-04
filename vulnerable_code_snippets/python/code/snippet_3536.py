from flask import Flask, request
app = Flask(__name__)

@app.route('/echo', methods=['POST'])
def echo():
    data = request.form['data']
    return f"Echo: {data}"

if __name__ == '__main__':
    app.run(port=8000)