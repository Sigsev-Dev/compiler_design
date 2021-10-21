%{
    //to check for valid cell phone numbers
%}

num "+91"[" "]{0,1}[1-9][0-9]{9}


%%
{num} {printf("Valid cell phone number.");}
.* {printf("Invalid cell phone number.");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){}