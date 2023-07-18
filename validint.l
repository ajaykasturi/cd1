
%{
	#include<stdio.h>
	int valid_int = 0;
	int valid_float = 0;
%}

%%
^[+-]?[0-9]+ {valid_int++;printf("int\n");}
^[+-]?[0-9]+[.][0-9]*$ {valid_float++;printf("float\n");}

.*;

%%
int main()
{
	printf("Enter\n");
	yylex();
	if(valid_int!=0)
		printf("valid int");
	if(valid_float!=0)
		printf("valid float");
	else
		printf("not a valid int or float");
	return 0;
}
int yywrap(){return 1;}