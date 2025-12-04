#include <iostream>

void printArray(int arr[], int size) {
    for(int i = 0; i <= size; i++) {
        std::cout << arr[i] << " ";
    }
}

int main() {
    int arr[3] = {1, 2, 3};
    printArray(arr, 5);
    return 0;
}