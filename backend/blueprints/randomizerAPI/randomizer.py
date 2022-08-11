from flask import Blueprint

# used to set blueprint name
randomizer = Blueprint('randomizer', __name__)

# used to configure the blueprint and register it to the app
def config(app):

    # need to import functionality in the blueprint to make it visible
    from backend.blueprints.randomizerAPI import routes # noqa
    app.register_blueprint(randomizer)

