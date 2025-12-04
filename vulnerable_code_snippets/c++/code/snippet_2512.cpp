#include <iostream>

class Resource {
public:
    Resource() { std::cout << "Resource acquired\n"; }
    ~Resource() { std::cout << "Resource destroyed\n"; }
};

Resource* getResource() {
    return new Resource();
}

void useResource(Resource* r) {
    if (r != nullptr) {
        std::cout << "Using resource\n";
    } else {
        std::cout << "No resource to use\n";
    }
}

int main() {
    Resource* r = getResource();
    useResource(r);
    delete r;
    useResource(r); // This will cause a use-after-free error
    return 0;
}