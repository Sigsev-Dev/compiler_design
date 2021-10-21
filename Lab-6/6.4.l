%{
    //to count number of characters present
    //in the input file provided 
    //as a command line argument
    int nc;
%}

%%
. {nc++;}
\n ;
%%

int yywrap(void){}

int main(int argc, char* argv[]){
    printf("Program to count number of characters in an input file.\n");
    if(argc<2){
        printf("Usage format: \n");
        printf("./<output file> <file from which characters will be counted>\n");
        return 0;
    }
    yyin=fopen(argv[1], "r");
    yylex();
    printf("Characters Count: %d\n", nc);
    return 0;
}