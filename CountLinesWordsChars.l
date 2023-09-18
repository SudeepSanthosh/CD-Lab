%{
#include <stdio.h>
int lc=0,wc=0,chars=0,ch=0;
%}

%%
[\n] {lc++; ch += yyleng;}
[a-zA-Z]+ {wc++; ch += yyleng;}
[a-zA-Z] {chars++; ch += yyleng;}
. {ch++;}
[\0] {printf("Number of lines: %d\n",lc);
	printf("Number of words: %d\n",wc);
	printf("Number of characters: %d\n", chars);}

%%
int yywrap(void){}

int main()
{
	printf("Enter input:\n");
	yylex();
	
	
	return 0;
	
}
