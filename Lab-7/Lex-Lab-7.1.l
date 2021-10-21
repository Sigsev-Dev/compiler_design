%{
    //flex program to print characters, tabs and whitespaces count
    //in an input file
    # include <stdio.h>
    int ch=0,sp=0,tab=0, nl=0;
%}

%%
([ ]) sp++;
\t tab++;
\n nl++;
. ch++;
%%

int yywrap(void){}

int main(int argc, char* argv[]){
    if(argc <2){
        printf("Usage:\n");
        printf("./<Output File> <Text file>\n");
        return 0;
    }
    yyin = fopen(argv[1], "r");
    yylex();
    printf("Characters count: %d\n", ch);
    printf("Whitespaces count: %d\n", sp);
    printf("Tabs count: %d\n", tab);
    printf("Lines count: %d\n", nl);
    return 0;
}