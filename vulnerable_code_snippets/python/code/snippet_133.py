class VulnerableClass:
    def __init__(self):
        self.data = {}

    def save_data(self, key, value):
        self.data[key] = value

    def get_data(self, key):
        return self.data[key]

def main():
    vc = VulnerableClass()
    user_input = input("Enter data: ")
    vc.save_data('key', user_input)
    print(vc.get_data('key'))

if __name__ == "__main__":
    main()