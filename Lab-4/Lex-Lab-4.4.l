%{
    //to detect integers or floats
%}

sig "+"|"-"|""
dig [0-9]
fl {dig}+"."+{dig}+

%%
{sig}+{fl}+ {printf("FLOAT");}
{sig}+{dig}+ {printf("INTEGER");}
.* {printf("INVALID");}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(){

}