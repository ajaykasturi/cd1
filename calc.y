%{
	#include<stdio.h>
	int flag=0;
}%

%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'
%% 
ArthmeticExpression: E{
printf("\nresult=%d\n",$$);
return 0;
}
E:E'+'E{$$=$1+$3;}
|E'-'E{$$=$1-$3;}
|E'*'E{$$=$1*$3;}
|E'/'E{$$=$1/$3;}
|E'%'E{$$=$1/$3;}
|'('E')'{$$=$2;}
|NUMBER{$$=$1;}
;
%%
void yyerror(){
	printf("Invalid expression");
	flag=1;
}
int main(){
	yyparse();
	if(flag==0){
		printf('Valid expression");
	}
}