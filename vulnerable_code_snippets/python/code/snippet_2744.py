def get_user_input():
    return input("Enter your name: ")

def print_greeting(name):
    print("Hello, %s!" % name)

def main():
    name = get_user_input()
    print_greeting(name)

if __name__ == "__main__":
    main()