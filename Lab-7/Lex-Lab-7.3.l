%{
    //to remove multiple tabs, spaces, newlines form one file and write them into another
    # include <stdio.h>
    # include <string.h>
    # include <stdbool.h>
    char l[50];
    bool nl=0, sp=0, tab=0;
%}

spac ([ ])
tab \t
nl \n

%%
\n {
    if(nl)
    continue;
    else{
        strcpy(l, yytext);
        fprintf(yyout, "%s", l);
        nl=1;
    }
}
\t {
    if(tab)
    continue;
    else{
        strcpy(l, yytext);
        fprintf(yyout, "%s", l);
        tab=1;
    }
}
([ ]) {
    if(sp)
    continue;
    else{
        strcpy(l, yytext);
        fprintf(yyout, "%s", l);
        sp=1;
    }
}
. {strcpy(l, yytext); fprintf(yyout, "%s", l);
nl=0, sp=0, tab=0;
}
%%

int yywrap(void){}

int main(int argc, char* argv[]){
    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();
    return 0;
}
