#include <iostream>
#include <string>

void printArray(int arr[], int size) {
    for(int i = 0; i <= size; i++) {
        std::cout << arr[i] << " ";
    }
}

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int size = sizeof(arr)/sizeof(arr[0]);
    printArray(arr, size);
    return 0;
}