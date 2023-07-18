%{
	#include<stdio.h>
	int length;
%}

%%
[a-zA-Z0-9]+ {length=yyleng;}
%%

int main(){
	printf("Enter i/p \n");
	yylex();
	printf("\nLength of the string is: %d\n",length);
	return 0;
}

int yywrap(){ return 1;}