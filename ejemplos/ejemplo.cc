
/*
Ejemplo de programa simple que he utilizado para crear los ficheros flex
*/

#include<iostream>// inline
#include "string"
#include <set>
// normal
using namespace std;

/*
comentario multilinea
*/

class Prueba
{
      private:
    int numero;

      public:
    Prueba(int n) {
        // comentario normal indentado
        numero = n;
    }
    int suma(int n /*comentario multilinea en mitad */) {
        return numero + n; // inline
    }
};

int main () {
      int edad;
      cout << "cual es tu edad?" << endl;
      cin>>edad;
      if (edad > 18) { cout << "Eres mayor de edad!" << endl; }
      else { // comentario inline en un else
         cout << "A casita" << endl;
      }
      for (unsigned int i = 0; i < 10; i++) {
         cout << i << endl;
      }
}