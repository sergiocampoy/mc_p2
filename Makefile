.PHONY : all clean

all : bin/primero bin/segundo bin/tercero bin/cuarto
	./script.sh ejemplo
	./script.sh ejemplo_latex
	./script.sh malla

clean :
	rm -rf bin/* resultado/* src/* tmp/*

# Creación de binarios

src/primero.c : flex/primero.l
	flex -o src/primero.c flex/primero.l

bin/primero : src/primero.c
	gcc -o bin/primero src/primero.c


src/segundo.c : flex/segundo.l
	flex -o src/segundo.c flex/segundo.l

bin/segundo : src/segundo.c
	gcc -o bin/segundo src/segundo.c


src/tercero.c : flex/tercero.l
	flex -o src/tercero.c flex/tercero.l

bin/tercero : src/tercero.c
	gcc -o bin/tercero src/tercero.c


src/cuarto.c : flex/cuarto.l
	flex -o src/cuarto.c flex/cuarto.l

bin/cuarto : src/cuarto.c
	gcc -o bin/cuarto src/cuarto.c