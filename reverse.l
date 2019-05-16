%{
#include<string.h>
%}

%%

[a-zA-Z0-9" ""\t"]* {	printf("%s",strrev(yytext));}		
.	{}

%%

int main(){
yyin = fopen("input.txt","r");
yylex();
return 0;
}

int yywrap(){
return 1;
}