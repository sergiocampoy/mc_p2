%option noyywrap

%%

"#include <"[^">"]+"> "  { printf ("%s\n", yytext); } // trata los includes
"for ("[^\;]+;[^\;]+;[^\)]+")" { printf (yytext); } // 
"; " { printf (";\n"); } // añade \n al encontrar ";"
"{ " { printf ("{\n"); } // añade \n al encontrar "{"
[\n?" "?]"}" { printf ("}"); }


%%

int main () {
	yylex();
}
