%{
    //program to count lexemes present in an input file
    int count=0;
%}

key "if"|"else"|"int"|"float"|"char"|"long"|"for"
sym "+"|"-"|"++"|"*"|"/"|"&&"|"%"|";"|":"|"="|">"|"<"|">="|"<="|"?"|"+="|"-="
iden [A-Za-z_][A-za-z0-9_]*
sig "-"|"+"|""
num_i {sig}*[0-9]
num_f {sig}*[0-9]*"."[0-9]+

%%
{key} count++;
{iden} count++;
{sym} count++;
{num_i} count++;
{num_f} count++;
([ ]) ;
\t ;
\n ;
%%

int yywrap(void){}

int main(int argc, char* argv[]){
    if(argc<2){
        printf("Usage:\n");
        printf("./<output file> <text file>\n");
        return 0;
    }
    yyin = fopen(argv[1], "r");
    yylex();
    printf("Lexemes Count: %d\n",count);
    return 0;
}