%option noyywrap

/*%{
#include "cal.tab.h"
extern int yylval;
%}*/

%%

[0-9]+|[0-9]*\.[0-9]+ { yylval=atof(yytext); return NUM;}
\n|. {return *yytext;}

%%
