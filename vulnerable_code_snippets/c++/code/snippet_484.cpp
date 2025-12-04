#include <iostream>
using namespace std;

int main() {
    char buffer[10];
    int i;
  
    for(i=0; i<=15; i++){
        buffer[i] = 'A';
    }
  
    buffer[i] = '\0';
  
    cout << "Buffer contents: " << buffer << endl;
  
    return 0;
}