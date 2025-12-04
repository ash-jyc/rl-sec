class VulnerableClass:
    def __init__(self):
        self.data = []

    def add_data(self, item):
        self.data.append(item)

    def get_data(self):
        return self.data

vuln_obj = VulnerableClass()
vuln_obj.add_data(10)
vuln_obj.add_data("Hello")
print(vuln_obj.get_data())