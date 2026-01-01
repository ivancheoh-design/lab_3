from flask import Flask

# Create Flask app
app = Flask(__name__)

# Define one route
@app.route("/")
def home():
    return "<h1>Hello from Docker Container!</h1>"

# Run app
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
