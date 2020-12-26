.PHONY : all clean

all : bin/compactador bin/espaciador bin/tabulizador

clean :
	rm -rf bin/* resultado/* src/* tmp/*

bin/compactador : src/compactador.c
	gcc -o bin/compactador src/compactador.c

src/compactador.c : flex/compactador.l
	flex -o src/compactador.c flex/compactador.l

bin/espaciador : src/espaciador.c
	gcc -o bin/espaciador src/espaciador.c

src/espaciador.c : flex/espaciador.l
	flex -o src/espaciador.c flex/espaciador.l

bin/tabulizador : src/tabulizador.c
	gcc -o bin/tabulizador src/tabulizador.c

src/tabulizador.c : flex/tabulizador.l
	flex -o src/tabulizador.c flex/tabulizador.l