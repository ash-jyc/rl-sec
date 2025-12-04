#include <iostream>

int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int size = 5;
    
    // Unchecked for loop
    for(int i=0; i<=size; i++) {
        std::cout << arr[i] << " ";
    }
  
    return 0;
}