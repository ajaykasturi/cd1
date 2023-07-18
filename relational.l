
%{
	#include<stdio.h>
%}

%%
"<" | ">" | "<=" | ">=" | "==" | "!=" {printf("Relational Operator\n");}

.* {printf("wrong");}
%%

int main()
{
	printf("Enter\n");
	yylex();
	return 0;
}
int yywrap(){return 1;}