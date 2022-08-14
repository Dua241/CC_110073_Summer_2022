%{

int comment=1; // if this is 0 means that everything is cooment till it is set to 1.  
int EOF=0; // denotes the End of file
int tokenizer(char*,char*);

%}
%%



\/\* comment=0; // re for comment start
\*\/ comment=1; // re for comment end
\/\/  {if(comment) comment=2;} // if comment has double slash again set comment = 2
[\n] {if(comment==2) comment=1;} // if comment is next line



[ \t\n]          ;
[0-9]+\.[0-9]+   { 
		    	if(comment%2) tokenizer("Float",yytext); // call token nizer if float re is ture same for all next lines
		 }

[0-9]+           { // re for integer
			if(comment%2) tokenizer("Integer",yytext);
		 }

if               { // re for if
			if(comment%2) tokenizer("keyword",yytext);
		 }

else             { // re for else
			if(comment%2) tokenizer("Keyword",yytext);
		 }

for              { // re for for
			if(comment%2) tokenizer("Keyword",yytext);
		 }

int              { // re for int
			if(comment%2) tokenizer("Keyword",yytext);
		 }

float            { // re for float
			if(comment%2) tokenizer("Keyword",yytext);
		 }

while            { // re for while
			if(comment%2) tokenizer("Keyword",yytext);
		 }

"=="             { // re for ==
			if(comment%2) tokenizer("Comparison",yytext);
		 }

"<="             { // re for <=
			if(comment%2) tokenizer("Comparison",yytext);
		 }

">="             { // re for >=
			if(comment%2) tokenizer("Comparison",yytext);
		 }

"<"              { // re for <
			if(comment%2) tokenizer("Comparison",yytext);
		 }

">"              { // re for >
			if(comment%2) tokenizer("Comparison",yytext);
		 }

"="              { // re for =
			if(comment%2) tokenizer("Assignment",yytext);
		 }

[+]              { // re for +
			if(comment%2) tokenizer("Operator",yytext);
		 }

[-]              { // re for -
			if(comment%2) tokenizer("Operator",yytext);
		 }

[*]              { // re for *
			if(comment%2) tokenizer("Operator",yytext);
		 }

[/]              { // re for /
			if(comment%2) tokenizer("Operator",yytext);
		 }

[{]              { // re for {
			if(comment%2) tokenizer("Open-bracket",yytext);
		 }

[}]              { // re for {
			if(comment%2) tokenizer("Close-bracket",yytext);
		 }

[(]              { // re for (
			if(comment%2) tokenizer("Open-paren",yytext);
		 }

[)]              { // re for )
			if(comment%2) tokenizer("Close-paren",yytext);
		 }

[;]              { // re for ;
			if(comment%2) tokenizer("Semicolon",yytext);
		 }

[_a-zA-Z0-9]+    { // re for identifier
			if(comment%2) tokenizer("Identifier",yytext);

		 }

.                { // end of file
		   if(comment%2) EOF=1;
		 }


%%


int tokenizer(char* type, char*text) // this writes in output file
{
	FILE *outfile = fopen("flex_output.txt" , "a"); // append in output file
	fprintf(outfile , "Token Class: %s", type); // writes token class
	fprintf(outfile , "Token: %s\n" , text); // writes token
	fclose(outfile); // closes file
}




int main(int argc , char *argv[]) {	
	FILE *myfile = fopen(argv[1], "r");
	FILE *outfile = fopen("output.txt" , "w");
	// make sure it's valid:
	if (!myfile) {
		printf("Invalid Input File\n");
		return -1;
	}
	// set lex to read from it instead of defaulting to STDIN:
	yyin = myfile;
	
	// lex through the input:
	yylex();
	if(EOF>0)
		fprintf(stdout,"Syntax error\n");
	else
		fprintf(stdout,"Success\n");
	fclose(myfile);
	fclose(outfile);
}
}
}
