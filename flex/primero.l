%option noyywrap

llave [\(\)\{\}\[\]]
op_arit [\+\-\*\/\%\=]
op_comp "+="|"-="|"*="|"/="|"%="|">>="|"<<="|"&="|"^="|"|="
op_ment "++"|"--"
op_rela "=="|"!="|"<"|">"|"<="|">="
op_logi "!"|"&&"|"||"
op_cout "<<"|">>"
ops {op_arit}|{op_comp}|{op_ment}|{op_rela}|{op_logi}|{op_cout}

%x include comillas_simples comillas_dobles comentario_inline comentario

%%

"#include" { printf("#include "); BEGIN(inc); } // añade espacio después del include
\"[^\"]*\" { printf(yytext); } // mantiene bien las "comillas"
\'[^\']*\' { printf(yytext); } // mantiene bien las 'comillas'
{llave} { printf(" %s ", yytext); } // añade espacio a ambos lados de la llave
{ops} { printf(" %s ", yytext); } // añade espacio a ambos lados de los operadores
"//".* { printf(" %s", yytext); } // apaña los comentarios
, { printf(" , "); }
"/*" { printf(yytext); }
"*/" { printf(yytext); }

<inc>\<[^\>]*\> { printf(yytext); BEGIN(INITIAL); }
<inc>\"[^\"]*\" { printf(yytext); BEGIN(INITIAL); }


%%

int main () {
	yylex();
}
