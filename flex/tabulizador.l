%{
int ntab = 0;
%}


parentesis \([^\)]+\)
cosas [^\}]*\{?
llave \{([^\}]*{llave}*)*\}
prueba {prueba}*

%%

"\n" {
    printf("\n");
    for (unsigned int i = 0; i < ntab; i++) {
        printf("\t");
    }
}

"{" { printf(yytext); ntab++; }
"}" { printf("}\n"); ntab--; }



%%

int main () {
	yylex();
}

yywrap() {
    return 1;
}