def get_user_input():
    input_data = input("Enter your data: ")
    return input_data

def process_data(data):
    buffer = bytearray(1024)
    for i in range(len(data)):
        buffer[i] = data[i]
    return buffer

def main():
    input_data = get_user_input()
    processed_data = process_data(input_data)
    print(processed_data)

if __name__ == "__main__":
    main()