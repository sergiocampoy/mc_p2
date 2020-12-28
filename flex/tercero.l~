%option noyywrap

%%

"#include <"[^">"]+"> "  { printf ("%s\n", yytext); } // trata los includes
"#include "\"[^">"]+"\" "  { printf ("%s\n", yytext); } // trata los includes
"for ("[^\;]+;[^\;]+;[^\)]+")" { printf (yytext); } // apaña el for
"; " { printf (";\n"); } // añade \n al encontrar ";"
"} " { printf ("}\n"); }
"{ " { printf ("{\n"); } // añade \n al encontrar "{"
[\n?" "?]"}" { printf ("}"); }
"private: " { printf ("%s\n", yytext); }
"public: " { printf ("%s\n", yytext); }
"protected: " { printf ("%s\n", yytext); }
"int main" { printf("\n%s", yytext); } // enter antes del main
"class" { printf("\n%s", yytext); } // enter antes de una clase
"} ;" { printf("};\n"); } // fin de una clase
"} else { " { printf("} else {\n"); }
"( )" { printf("()"); }


%%

int main () {
	yylex();
}
