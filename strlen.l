%{
	#include<stdio.h>
	int length=0;
%}

%%
[a-zA-Z0-9]+ {length=length+yyleng;printf("%c\n",yytext[0]);}
%%

int main(){
	printf("Enter i/p \n");
	yylex();
	printf("\nLength of the string is: %d\n",length);
	return 0;
}

int yywrap(){ return 1;}