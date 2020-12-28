#include <iostream>
#include "string"
using namespace std;
int main () {
    int edad;
    cout << "cual es tu edad?" << endl;
    cin >> edad;
    if (edad > 18) {
        cout << "Eres mayor de edad!" << endl;
    } else {
        cout << "A casita" << endl;
    }
    for (unsigned int i = 0; i < 10; i++) {
        cout << i << endl;
    }
}