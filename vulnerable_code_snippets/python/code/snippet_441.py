import logging

class CustomException(Exception):
    def __init__(self, message):
        self.message = message

def raise_exception():
    try:
        raise CustomException("This is a custom exception")
    except Exception as e:
        logging.error(e)
        return str(e)

raise_exception()