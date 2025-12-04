def process_data(user_input):
    data = user_input + '\0'
    return data

def main():
    user_input = input("Enter your data: ")
    data = process_data(user_input)
    print(data)

if __name__ == "__main__":
    main()