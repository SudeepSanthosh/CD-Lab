%{
#include <stdio.h>
int lc=0,wc=0,chars=0,ch=0;
%}

%%
[\n] {lc++; ch += yyleng;}
[0-9a-zA-Z]+ {wc++; ch += yyleng;}
. {ch++;}
%%
int yywrap(void){}

int main()
{
	yylex();
	printf("Number of lines: %d\n",lc);
	printf("Number of words: %d\n",wc);
	printf("Number of characters: %d\n", ch);
	
	return 0;
	
}
