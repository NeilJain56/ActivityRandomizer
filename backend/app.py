from flask import Flask
from backend.blueprints.randomizerAPI import randomizer


# function used to run the app
def create_app():
    app = Flask(__name__)

    # configure randomizer blueprint so routes in that path can be found
    randomizer.config(app)
    return app
