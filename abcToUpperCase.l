%{
#include<stdio.h>
%}

%%
abc {printf("ABC");}
. {ECHO;} /* ECHO outputs the input character as it is to the standard output. Alternate option is to use putchar(yytext[0]); */ 
%%
int yywrap(){
	return 1;
}
int main()
{
	yylex();
	return 0;
}
