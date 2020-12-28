%option noyywrap

espacio [\n\t\ ]*
operador [\+-\*/\?\<\>]

%x cml cul

%%

{espacio} {printf(" ");} // "comprime" \n \t y " " en 1 espacio
"//" { printf(yytext); BEGIN(cul); }
"/*" { printf(yytext); BEGIN(cml); } // https://stackoverflow.com/questions/8886410/stripping-multiline-comments-in-c-with-regex

<cml>"*/"\n? { printf(yytext); BEGIN(INITIAL); }
<cml>.* { printf(yytext); }

<cul>.*\n { printf(yytext); BEGIN(INITIAL); }

%%

int main () {
	yylex();
}
