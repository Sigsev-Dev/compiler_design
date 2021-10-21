%{
    //program to show whether a string
    //contains only alphabets or not
%}

alphabets [A-Za-z]

%%
{alphabets}+ {printf("Only alphabets");}
.* {printf("Might contain characters other than alphabets"); }
%%
	
int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}
