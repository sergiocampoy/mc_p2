%option noyywrap

%%

\n*\t*" "* {printf(" ");} // comprime todos los espacios en uno solo

%%

int main () {
	yylex();
}
