#!/bin/bash
#toma lacasitos

# inkscape mySVGinputFile.svg --export-area-drawing --batch-process --export-type=pdf --export-filename=output.pdf

function prueba {
	echo $1
}


find -name "*.svg" -exec ./prueba {} \;

