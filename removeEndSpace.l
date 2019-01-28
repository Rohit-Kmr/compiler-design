%option noyywrap
%{

%}

%%

[a-zA-Z0-9' '\t]*[a-zA-Z0-9] {fprintf(yyout,"%s",yytext);}
[\t' ']* 		     {}
.			     {fprintf(yyout,"%s",yytext);}

%%

int main()
{
	yyin = fopen("input.txt","r");
	yyout= fopen("output.txt","w");
	yylex();
	return 0;
}

