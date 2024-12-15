from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, World! This is a Flask app running on ECS."

@app.route("/health")
def health():
    return jsonify(status="OK", message="The application is healthy.")

@app.route("/info")
def info():
    return jsonify(
        app="Python ECS Deployment",
        version="1.0.0",
        environment=os.getenv("ENVIRONMENT", "development")
    )

if __name__ == "__main__":
    # Get the port from the environment variable (default to 80)
    port = int(os.getenv("PORT", 80))
    app.run(host="0.0.0.0", port=port)
