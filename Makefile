.PHONY : all clean

units_l := $(wildcard flex/*.l)

nombres := $(basename ${units_l})
nombres := $(notdir ${nombres})

units_c := $(addprefix src/, ${nombres})
units_c := $(addsuffix .c, ${units_c})

ejecutables := $(addprefix bin/, ${nombres})

all : ${ejecutables}
	@echo wadafac

clean :
	rm -rf bin/* resultado/* src/* tmp/*

src/%.c : ${units_l}
	flex -o $@ $<

bin/% : ${units_c}
	gcc -o $@ $<
