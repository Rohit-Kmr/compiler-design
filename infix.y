%{
#include<stdio.h>
#include<stdlib.h>
%}

%token NUM
%left '+' '-'
%left '*' '/'
%right UNMINUS

%%
S:  E 	{printf(" <- postfix"); exit(1);}
    ;
E:  E '+' E {printf("+");}
    |   E '*' E {printf("*");}
    |   E '-' E {printf("-");}
    |   E '/' E {printf("/");}
    |   '(' E ')'
    |   '-' E %prec UNMINUS {printf("-");}
    |   NUM     {printf("%d", yylval);}
    ;
%%

#include"lex.yy.c"

int main(){
    printf("enter Infix : ");
    yyparse();
}

int yyerror (char *msg) {
    return printf ("error YACC: %s\n", msg);
}