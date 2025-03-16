%{
#include<stdio.h>
int yywrap() { return 1; }  // Add this line
%}

%%
[-][0-9]+ {printf("The number is negative\n");}
[+]?[0-9]+ {printf("The number is positive\n");}
.   {}

%%

int main()
{
	yylex();
	return 0;
}
