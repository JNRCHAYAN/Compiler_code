%{
#include<stdio.h>
int yywrap() { return 1; }
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    if (num % 2 == 0)
        printf("The number %d is even\n", num);
    else
        printf("The number %d is odd\n", num);
}
.   {}

%%

int main()
{
    yylex();
    return 0;
}