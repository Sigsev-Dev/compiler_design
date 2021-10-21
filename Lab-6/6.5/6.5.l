%{
    //to count the number of
    //occurrences of the specified word
    //in the file provided as command line argument
    int count=0;
    char* word;
%}

let [A-Za-z]

%%

{let}+ {
    if(strcmp(word, yytext) == 0)
    count++;
}
\n ;
. ;
%%

int yywrap(void){}

int main(int argc, char* argv[]){
    printf("Program to count occurrences of a word in an input file.\n");
    if(argc<3){
        printf("Usage:\n");
        printf("./<Output File> <File in which the word will be searched> ");
        printf("<Word to be saerched>\n");
        return 0;
    }
    yyin=fopen(argv[1], "r");
    word = argv[2];
    yylex();
    printf("Number of occurrences of the given word: %d\n", count);
}