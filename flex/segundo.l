%option noyywrap

espacio [\t\ ]*
salto [\n\t\ ]*
operador [\+-\*/\?\<\>]

%x cml inline multi_inline

%%

{salto} {printf(" ");} // "comprime" \n \t y " " en 1 espacio

{espacio}"//" { printf(" //"); BEGIN(inline); } // comentario inline
{salto}"//" { printf("\n//"); BEGIN(inline); } // al inicio de la linea
<inline>\n{salto}? { printf("\n"); BEGIN(INITIAL); }


{espacio}"/*" { printf(" /*"); BEGIN(multi_inline); } // multilinea inline
<multi_inline>"*/"{espacio} { printf("*/ "); BEGIN(INITIAL); }

{salto}"/*" { printf("\n/*"); BEGIN(cml); } // multilinea normal
<cml>"*/"{salto} { printf("*/\n"); BEGIN(INITIAL); }

%%

int main () {
	yylex();
}
