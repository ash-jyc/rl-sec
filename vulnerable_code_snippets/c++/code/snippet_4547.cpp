#include <iostream>
using namespace std;

int main() {
    int arr[5];
    int index = 10;
    
    cout << "Enter 10 numbers: ";
    for(int i=0; i<index; i++) {
        cin >> arr[i];
    }
    
    cout << "Your numbers are: ";
    for(int i=0; i<index; i++) {
        cout << arr[i] << " ";
    }
    
    return 0;
}