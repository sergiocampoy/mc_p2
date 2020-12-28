#include<iostream>// inline
#include "string"
#include <set>
// normal
using namespace std;

/*
comentario multilinea
*/

class Prueba {
private:
    int numero;
public:
    Prueba(int n) {
        // normal con tabs
        numero = n;
    }
    int suma(int n /*comentario multilinea en mitad para tocar los huevos*/) {
        return numero + n; // inline
    }
};

int main () {
    int edad;
    cout << "cual es tu edad?" << endl;
    cin>>edad;
    if (edad > 18) {
        cout << "Eres mayor de edad!" << endl;
    } else { // en teoría esto está roto
        cout << "A casita" << endl;
    }
    for (unsigned int i = 0; i < 10; i++) {
        cout << i << endl;
    }
}