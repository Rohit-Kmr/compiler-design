%option noyywrap
%%
[0-9]+  {yylval=atoi(yytext); return NUM;}
\n|. {return *yytext;}
%%