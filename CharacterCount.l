/*Count number of characters in the given input file*/
%{ 
    #include<stdio.h>
    int n_char=0;

%}

%%
\n      {++n_char;}
.       {++n_char;}

%%
int yywrap(){}

int main(int argc[],char *argv[])
{
 yyin=fopen("input.txt", "r"); 
 yylex();
 printf("Number of characters in the given input file : %d",n_char);
 printf("\n");
 
 return 0;
}

 
