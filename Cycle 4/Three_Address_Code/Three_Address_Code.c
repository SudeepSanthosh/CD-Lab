#include<stdio.h>
#include<string.h>

void main()
{
	char icode[20][30],str[30],opr[10];
	int i=0;
	printf("Enter the intermediate code instructions (terminated by exit):\n");
	do
	{
		scanf("%s",icode[i]);
	} while(strcmp(icode[i++],"exit")!=0);
	
	printf("\nTarget Code Generation\n");
	printf("**********************\n");
	
	i=0;
	do 
	{
		strcpy(str,icode[i]);
		switch(str[3])
		{
			case '+':
				strcpy(opr,"ADD ");
				break;
			case '-':
				strcpy(opr,"SUB ");
				break;
			case '*':
				strcpy(opr,"MUL ");
				break;
			case '/':
				strcpy(opr,"DIV ");
				break;
		}
		printf("\n\tMOV %c,R%d",str[2],i);
		printf("\n\t%s%c,R%d",opr,str[4],i);
		printf("\n\tMOV R%d,%c",i,str[0]);
		printf("\n");
	} while(strcmp(icode[++i],"exit")!=0);
}
