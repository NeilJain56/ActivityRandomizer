from flask import Flask
from backend.blueprints.randomizerAPI import randomizer

# blueprints = (
#     randomizer
# )
def create_app():
    app = Flask(__name__)

    # Blueprint
    randomizer.config(app)

    return app