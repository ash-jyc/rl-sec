import sys

def vulnerable_function(user_input):
    try:
        # Assume user_input is a file path
        with open(user_input, 'r') as f:
            print(f.read())
    except Exception as e:
        print("An error occurred: ", e)

if __name__ == "__main__":
    input_from_attacker = "../../../etc/passwd"
    vulnerable_function(input_from_attacker)