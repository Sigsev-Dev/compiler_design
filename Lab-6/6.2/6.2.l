%{
    //to chevk for valid email addresses
%}

dom ".com"|".org"|".edu"|".ac.in"
valid [a-z]+[a-z . 0-9_]*"@"[a-z]+{dom}

%%
{valid} {printf("Valid email address.");}
.* {printf("Invalid email address.");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){}