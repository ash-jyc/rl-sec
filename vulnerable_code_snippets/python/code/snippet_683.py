import sys

def create_large_list():
    list = []
    for i in range(10**6):
        list.append("a"*10**6)
    return list

def main():
    large_list = create_large_list()
    print(sys.getsizeof(large_list))

if __name__ == "__main__":
    main()