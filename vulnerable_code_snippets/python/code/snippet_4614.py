def get_user_input():
    user_input = input("Enter your name: ")
    return user_input

def print_user_info(user_name):
    info = "Hello, {0}!".format(user_name)
    print(info)

def main():
    user_name = get_user_input()
    print_user_info(user_name)

if __name__ == "__main__":
    main()