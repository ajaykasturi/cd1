%{
	#include<stdio.h>
%}

%%
"Hai" {printf("Bye");}
.* {printf("Wrong");}
%%

int main(){
	printf("Enter Input\n");
	yylex();
	return 0;
}

int yywrap(){return 1;}
