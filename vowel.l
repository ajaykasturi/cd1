
%{
	#include<stdio.h>
	int vowel_count=0;
	int const_count=0;
	int digit_count=0;
%}

%%
[aeiouAEIOU] {vowel_count++;}
[a-zA-Z] {const_count++;}
[0-9] {digit_count++;}
%%
int main()
{
	printf("Enter\n");
	yylex();
	printf("Vowel Count: %d\n",vowel_count);
	printf("const count: %d\n",const_count);
	printf("digit count: %d\n",digit_count);
	return 0;
}
int yywrap(){return 1;}