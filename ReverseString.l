

%{

char word[100];

%}

%%

[a-zA-Z0-9" "]+ {strcpy(word,yytext);}
.	{}
%%





int main(){
 yyin = fopen("revinput.txt","r");
 
 yylex();
 
// strrev(word);
 printf("String = %s",word);
 printf("\n");
 

 printf("Reversed string is: ");
 for(int i=100;i>=0;i--){
 	printf("%c",word[i]);

 }
 printf("\n");
 return 0;	
}

int yywrap(void){return 1;}

