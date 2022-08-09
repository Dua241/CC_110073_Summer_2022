%{

int comment=1;
int EOF=0;
int tokenizer(char*,char*);

%}

%%



\/\* comment=0; 
\*\/ comment=1;
\/\/  {if(comment) comment=2;}
[\n] {if(comment==2) comment=1;}



[ \t\n]          ;

[_a-zA-Z0-9]+    {
			if(comment%2) tokenizer("Identifier",yytext);
		 }

[0-9]+\.[0-9]+   { 
		    	if(comment%2) tokenizer("Float",yytext);
		 }

[0-9]+           {
			if(comment%2) tokenizer("Integer",yytext);
		 }

[+]              {
			if(comment%2) tokenizer("Operator",yytext);
		 }

[-]              {
			if(comment%2) tokenizer("Operator",yytext);
		 }

[*]              {
			if(comment%2) tokenizer("Operator",yytext);
		 }

[/]              {
			if(comment%2) tokenizer("Operator",yytext);
		 }

"=="             {
			if(comment%2) tokenizer("Comparison Operator",yytext);
		 }

"<="             {
			if(comment%2) tokenizer("Comparison Operator",yytext);
		 }

">="             {
			if(comment%2) tokenizer("Comparison Operator",yytext);
		 }

"<"              {
			if(comment%2) tokenizer("Comparison Operator",yytext);
		 }

">"              {
			if(comment%2) tokenizer("Comparison Operator",yytext);
		 }

"="              {
			if(comment%2) tokenizer("Assignment Operator",yytext);
		 }

if               {
			if(comment%2) tokenizer("Keyword",yytext);
		 }

else             {
			if(comment%2) tokenizer("Keyword",yytext);
		 }

for              {
			if(comment%2) tokenizer("Keyword",yytext);
		 }

int              {
			if(comment%2) tokenizer("Keyword",yytext);
		 }

float            {
			if(comment%2) tokenizer("Keyword",yytext);
		 }

while            {
			if(comment%2) tokenizer("Keyword",yytext);
		 }

[{]              {
			if(comment%2) tokenizer("Open Bracket",yytext);
		 }

[}]              {
			if(comment%2) tokenizer("Close Bracket",yytext);
		 }

[;]              {
			if(comment%2) tokenizer("Semicolon",yytext);
		 }

[(]              {
			if(comment%2) tokenizer("Open Parenthesis",yytext);
		 }

[)]              {
			if(comment%2) tokenizer("Close Parenthesis",yytext);
		 }

.                {
		   if(comment%2) EOF=1;
		 }


%%


int tokenizer(char* type, char*text)
{
	FILE *tokenFile = fopen("output.txt" , "a");
	fprintf(tokenFile , "%s\n",type);
	fprintf(tokenFile , "%s\n" , text);
	fclose(tokenFile);
}


int main(int argc , char *argv[]) {	

	FILE *inputFile = fopen(argv[1], "r");
	FILE *tokenFile = fopen("output.txt" , "w");

	if (!inputFile) {
		printf("Invalid Input File!");
		return -1;
	}
	yyin = inputFile;
	
	yylex();
	if(EOF>0)
		fprintf(stdout,"Tokenizing Error\n");
	else
		fprintf(stdout,"Tokenizing Successful\n");

	fclose(inputFile);
	fclose(tokenFile);
}