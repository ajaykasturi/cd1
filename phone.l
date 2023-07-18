
%{
	#include<stdio.h>
	int n;
%}

%%
[9876][0-9]{9} {printf("Valid Phone Number");}
.* {printf("Wrong Number");}
%%
int main()
{
	printf("Enter Phone Number\n");
	yylex();
	return 0;
}
int ywrap(){}

