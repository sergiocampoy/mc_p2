%option noyywrap

%%

"; " { printf(";\n"); }
"; //" { printf("; //"); }
"} " { printf("}\n"); }
"} //" { printf("} //"); }
"{ " { printf("{\n"); }
"{ //" { printf("{ //"); }
" #include" { printf("\n#include"); }
"private: " { printf("private:\n"); }
"private: //" { printf("private: //"); }
"public: " { printf("public:\n"); }
"public: //" { printf("public: //"); }
"protected: " { printf("protected:\n"); }
"protected: //" { printf("protected: //"); }
"} else { " { printf("%s\n", yytext); }
"} else { //" { printf("%s", yytext); }
"for ("[^\;]+;[^\;]+;[^\)]+")" { printf (yytext); } // apaña el for
"} ; " { printf("};\n"); }

%%

int main () {
	yylex();
}
