%option noyywrap

%%

"; " { printf(";\n"); }
"} " { printf("}\n"); }
"{ " { printf("{\n"); }
"private: " { printf("private:\n"); }
"public: " { printf("public:\n"); }
"protected: " { printf("protected:\n"); }
"} else { " { printf("} else {\n"); }
" #include" { printf("\n#include"); }

"; //" { printf("; //"); }
"} //" { printf("} //"); }
"{ //" { printf("{ //"); }
"private: //" { printf("private: //"); }
"public: //" { printf("public: //"); }
"protected: //" { printf("protected: //"); }
"} else { //" { printf("%s", yytext); }

"for ("([^\;]+;){2}[^\)]+")" { printf (yytext); }
"} ; " { printf("};\n"); } // final de una clase

%%

int main () {
	yylex();
}
