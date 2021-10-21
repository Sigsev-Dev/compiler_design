%{
    //to check for valid identifiers
    //the values defined in key are treated as key-words
%}

key int|float|for|long|switch|if|else

all [A-Za-z][A-Za-z0-9_]*

%%
{key}+ {printf("Not a valid identifier.");}
{all}+ {printf("Valid identifier.");}
.+ {printf("Not a valid identifier");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(){
    
}