from backend.blueprints.randomizerAPI.randomizer import randomizer


@randomizer.route('/')
def index():
    return "Welcome to the homepage!"
