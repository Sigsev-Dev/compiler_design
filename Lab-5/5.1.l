%{
    //to count lexemes
    int count =0;
%}

key "if"|"else"|"int"|"float"|"char"|"long"|"for"
sym "+"|"++"|"*"|"/"|"&&"|"%"|";"|":"|"="|">"|"<"|">="|"<="|"?"|"+="|"-="
iden [A-Za-z_][A-za-z0-9_]*
sig "-"|"+"|""
num_i {sig}*[0-9]
num_f {sig}*[0-9]*"."[0-9]+

 
%%
{key}+ {count++;}
{iden}+ {count++;}
{sym}+ {count++;}
{num_i}+ {count++;}
{num_f}+ {count++;}
([ ]) {}
\n {printf("Lexemes count: %d\n",count);
count = 0;}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){

}