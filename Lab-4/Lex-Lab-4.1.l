%{
    //to detect and print keyword
    //as long as any of the specified keywords
    //are provided as input, the program detects it
%}

key int|for|if|float|switch|else|case|switch|char|do|while|break

%%
{key}+ {printf("Keyword, and it is: %s",yytext);}
.+ {printf("Not a keyword");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){

}