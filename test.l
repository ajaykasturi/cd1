
%{
	#include<stdio.h>
	int v=0;
	int c=0;
	int d=0;
%}

%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
[0-9] {d++;}
%%
int main()
{
	printf("\nEnter\n");
	yylex();
	printf("vowels=%d \n consts=%d \n digits=%d",v,c,d);
	return 0;
}
int yywrap(){return 1;}