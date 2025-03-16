%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
int yywrap() { return 1; }
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    printf("The number %d is an integer\n", num);
}
[0-9]+\.[0-9]+ {
    float num = atof(yytext);
    printf("The number %f is a float\n", num);
}
.   {}

%%

int main()
{
    printf("Enter a number: ");
    yylex();
    return 0;
}