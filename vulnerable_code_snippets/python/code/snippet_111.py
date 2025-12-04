import time

def check_password(input_password):
    actual_password = "secret"
    if input_password == actual_password:
        return True
    else:妆
        return False

def main():
    input_password = input("Enter your password: ")
    start = time.time()
    if check_password(input_password):
        print("Access granted.")
    else:
        print("Access denied.")
    end = time.time()
    print("Time taken: ", end - start)

if __name__ == "__main__":
    main()