%option noyywrap

llave [\{\}\[\]]
op_arit [\+\-\*\/\%\=]
op_comp "+="|"-="|"*="|"/="|"%="|">>="|"<<="|"&="|"^="|"|="
op_ment "++"|"--"
op_rela "=="|"!="|"<"|">"|"<="|">="
op_logi "!"|"&&"|"||"
op_cout "<<"|">>"
ops {op_arit}|{op_comp}|{op_ment}|{op_rela}|{op_logi}|{op_cout}|"->"

%x include comillas_simples comillas_dobles comentario_inline comentario

%%

{llave} { printf(" %s ", yytext); } // añade espacios a ambos lados de las llaves
\( { printf(" ("); }
\) { printf(") "); }
{ops} { printf(" %s ", yytext); } // añade espacios a ambos lados de los operadores
, { printf(" , "); } // añade espacios a ambos lados de las comas


"#include" { printf("#include "); BEGIN(include); } // añade un espacio al #include
\"  { printf(yytext); BEGIN(comillas_dobles); } // comienza a leer entre comillas dobles
\'  { printf(yytext); BEGIN(comillas_simples); } // comienza a leer entre comillas simples
"//" { printf(" %s", yytext); BEGIN(comentario_inline); } // comienza a leer un comentario de una linea
"/*" { printf(" %s", yytext); BEGIN(comentario); } // comienza a leer un comentario multilinea


<include>\<[^\>]*\> { printf(yytext); BEGIN(INITIAL); } // lee <fichero>
<include>\"[^\"]*\" { printf(yytext); BEGIN(INITIAL); } // lee "fichero.h"


<comillas_dobles>\" { printf(yytext); BEGIN(INITIAL); } // termina de leer comillas dobles
<comillas_simples>\' { printf(yytext); BEGIN(INITIAL); } // termina de leer comillas simples
<comentario_inline>\n { printf(yytext); BEGIN(INITIAL); } // termina de leer un comentario de una linea
<comentario>"*/" {printf(yytext); BEGIN(INITIAL); } // termina de leer un comentario multilinea

%%

int main () {
	yylex();
}
