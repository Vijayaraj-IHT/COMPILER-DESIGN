%{
#include <stdio.h>
FILE *email_fp, *url_fp;
%}
%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} {fprintf(email_fp,"%s\n",yytext); printf("EMAIL: %s\n",yytext);}
https?://[a-zA-Z0-9./?=_%:-]+|www\.[a-zA-Z0-9./?=_%:-]+ {fprintf(url_fp,"%s\n",yytext); printf("URL: %s\n",yytext);}
\n|.
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc<2){printf("Usage: %s <inputfile>\n",argv[0]); return 1;}
 yyin=fopen(argv[1],"r");
 email_fp=fopen("emails.txt","w");
 url_fp=fopen("urls.txt","w");
 yylex();
 fclose(email_fp);
 fclose(url_fp);
 fclose(yyin);
 return 0;
}
