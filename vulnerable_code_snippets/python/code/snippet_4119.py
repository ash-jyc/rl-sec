def get_user_input():
    user_input = input("Enter your name: ")
    return user_input

def print_name(name):
    print("Your name is: " + name)

def main():
    name = get_user_input()
    print_name(name)

if __name__ == "__main__":
    main()