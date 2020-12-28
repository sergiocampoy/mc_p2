#include "cuadro.h"

/*
Comentario grande de ejemplo
*/
Cuadro::Cuadro() {
    // inicializa la tabla de vértices
    v.emplace_back(0, 0, 0);
    v.emplace_back(1, 0, 0);
    v.emplace_back(1, 1, 0);
    v.emplace_back(0, 1, 0);

    // inicializa la tabla de caras
    f.emplace_back(0, 1, 3);
    f.emplace_back(1, 2, 3);

    colorea();

    // crea las coordenadas de textura
    c_t.emplace_back(0, 1);
    c_t.emplace_back(1, 1);
    c_t.emplace_back(1, 0);
    c_t.emplace_back(0, 0);
}