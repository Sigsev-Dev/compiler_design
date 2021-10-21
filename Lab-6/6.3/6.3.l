%{
    //to chek for valid email addresses
    //based on number of characters in username
    //if characters count is less than 10 then it is invalid
    # include <stdlib.h>
%}

dom ".com"|".org"|".edu"|".ac.in"
valid [a-z]+[a-z . 0-9_]*
end "@"[a-z]+{dom}

%%
{valid}{end} {
    int l=0;
    char* ind = yytext;
    while(*ind != '@'){
        l++;
        ind++;
    }
    printf("Username length: %d\n",l);
    if(l>=10)
    printf("Valid email address.");
    else
    printf("Invalid email address.");
}
.* {printf("Invalid email address.");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){}