#include <iostream>
using namespace std;

int main() {
    int arr[5];
    int i;
    for(i=0; i<=5; i++) {
        arr[i] = i+1;
    }
    for(i=0; i<=5; i++) {
        cout << arr[i] << endl;
    }
    return 0;
}