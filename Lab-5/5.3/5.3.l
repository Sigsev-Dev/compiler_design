%{
    //to check for valid urls
%}

TLD ".co"|".com"|".gov"|".orz"|".edu"
CTLD ".uk"|".in"|".ca"|".pk"
pr "https"|"http"|"ftp"
url {pr}+"://www."[A-Za-z0-9]+[\/\.a-zA-Z0-9"-"]*{TLD}+{CTLD}*

%%
{url} {printf("Valid URL");}
.* {printf("Invalid URL");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){

}