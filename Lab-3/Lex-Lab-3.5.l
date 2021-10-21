%{
    //program to detect keywords
%}


key int|float|double|long|char|enum|class|struct|void|return|while|do|if|else|for|switch|case|const|default|continue|goto

%%
{key} {printf("This is a C keyword.");}
.* {printf("This is not a keyword.");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){}