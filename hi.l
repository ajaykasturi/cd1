
%{
	#include<stdio.h>
%}

%%
"hi" {printf("By");}
.*   {printf("Wrong");}
%%
int yywrap(){};
int main()
{
	printf("Enter Greet()");
	yylex();
	return 0;
}
