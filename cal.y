%{
#include<stdio.h>
#include<stdlib.h>
#define YYSTYPE double
%}

%token NUM

%left '+' '-'
%left '*' '/'
%right UMINUS

%%

S : S E'\n'	{ printf("result : %g \nEnter expression:", $2); }
   | 
   ;
E : E '+' E { $$ = $1 + $3; }
| E'-'E { $$=$1-$3; }
| E'*'E { $$=$1*$3; }
| E'/'E { $$=$1/$3; }
| '('E')' { $$=$2; }
| '-'E %prec UMINUS { $$= -$2; }
| NUM
;

%%

#include"lex.yy.c"

int main()
{
printf("Enter the expression: ");
yyparse();
}

yyerror (char * s)
{
printf ("% s \n", s);
exit(1);
}