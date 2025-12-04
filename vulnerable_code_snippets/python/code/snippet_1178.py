import re
import sys

def validate_password(password):
    try:
        if len(password) < 8:
            raise ValueError("Password too short")
        elif re.search('[0-9]', password) is None:
            raise ValueError("Password must contain a number")
        elif re.search('[A-Z]', password) is None: 
            raise ValueError("Password must contain an uppercase letter")
        elif re.search('[a-z]', password) is None: 
            raise ValueError("Password must contain a lowercase letter")
        elif re.search('[_@$]', password) is None: 
            raise ValueError("Password must contain a special character")
        else:
            return True
    except Exception as e:
        print(e)
        return False

print(validate_password(sys.argv[1]))