%{
int count=0;
%}

%%

[a-zA-Z0-9]* {count++;}
.		{}

%%

int main(){
yyin = fopen("input.txt","r");
yylex();
printf("%d",count);
return 0;
}

int yywrap(){
return 1;
}