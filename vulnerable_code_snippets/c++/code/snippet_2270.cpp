#include <iostream>
using namespace std;

int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int index;

    cout << "Enter an index: ";
    cin >> index;

    cout << "The value at index " << index << " is: " << arr[index] << endl;

    return 0;
}