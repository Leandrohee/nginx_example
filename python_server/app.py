from flask import Flask

app = Flask(__name__)


@app.route("/user/<user_id>")
def get_user(user_id):
    return f"this is the user {user_id} from python server"


if __name__ == "__main__":
    # We host on 0.0.0.0 so it's accessible outside the container
    app.run(host="0.0.0.0", port=1111)
