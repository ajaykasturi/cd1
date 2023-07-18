
%{
	#include<stdio.h>
	int m;
%}

%%
[0-9]+ {	m=atoi(yytext);
		if(m%2==0){
		printf("%d is even",m);
		} else {
			printf("%d is odd",m);
		}
	}
.* {printf("Wrong");}
%%
int main()
{
	printf("Enter\n");
	yylex();
	return 0;
}

int yywrap(){return 1;}