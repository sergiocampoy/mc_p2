%{
int ntab = 0;

void tabula();
%}


parentesis \([^\)]+\)
cosas [^\}]*\{?
llave \{([^\}]*{llave}*)*\}
prueba {prueba}*

%%

"\n" { printf("\n"); tabula(); }

"{" { printf(yytext); ntab++; }
"\n}" { printf("\n"); ntab--; tabula(); printf("}"); }
"\nprivate:" { ntab--; tabula(); printf(yytext); ntab++; }
"\npublic:" { ntab--; tabula(); printf(yytext); ntab++; }
"\nprotected:" { ntab--; tabula(); printf(yytext); ntab++; }
"\n " { printf("\n"); tabula(); }



%%

int main () {
	yylex();
}

int yywrap() {
    return 1;
}

void tabula() {
    for (unsigned int i = 0; i < ntab; i++) {
        printf("\t");
    }
}