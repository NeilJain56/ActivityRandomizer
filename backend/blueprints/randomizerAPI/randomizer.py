from flask import Blueprint

randomizer = Blueprint('randomizer', __name__)


def config(app):
    from backend.blueprints.randomizerAPI import routes # noqa
    app.register_blueprint(randomizer)

