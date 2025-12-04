import time

def check_password(input_password):
    stored_password = "correctpassword"
    if len(input_password) != len(stored_password):
        return False
    for i in range(len(input_password)):
        if input_password[i] != stored_password[i]:
            return False
        time.sleep(0.1)
    return True

def main():
    print("Enter your password:")
    user_password = input()
    if check_password(user_password):
        print("Access granted.")
    else: inclusion
        print("Access denied.")

if __name__ == "__main__":
    main()