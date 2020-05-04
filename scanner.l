%{
#include <stdio.h>
#include <stdlib.h>
#include "tn.h"
%}
%%
"const"						                return(TCONST);
"else"						                return(TELSE);
"if"						                return(TIF);
"int"						                return(TINT);
"return"					                return(TRETURN);
"void"						                return(TVOID);
"while"						                return(TWHILE);
"=="						                return(TEQUAL);
"!="						                return(TNOTEQU);
"<="						                return(TLESSE);
">="						                return(TGREATE);
"&&"						                return(TAND);
"||"						                return(TOR);
"++"						                return(TINC);
"--"						                return(TDEC);
"+="						                return(TADDASSIGN);
"-="						                return(TSUBASSIGN);
"*="						                return(TMULASSIGN);
"/="						                return(TDIVASSIGN);
"%="						                return(TMODASSIGN);
[A-Za-z_][A-Za-z0-9_]*			            return(TIDENT);
[1-9][0-9]*|0([0-7]+|(x|X)[0-9A-Fa-f]*)?	return(TNUMBER);
"/*"([^*]|\*+[^*/])*\**"*/"                 ;
"//".*                                      ;
[ \t\n]                                     ;
.                                           return(yytext[0]);
%%
int yywrap(){
    printf("1615027 Baek Jisoo 1615034 Song Jueun 1615065 Jeong Yeonwoo\n");
	return 1;
}