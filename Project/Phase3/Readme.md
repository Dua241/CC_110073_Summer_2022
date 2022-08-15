# Project Report 

## Introduction
This project is all about Chocopy language compiler. In this project I have used ChocoPy language. ChocoPy is a programming language designed for classroom use in undergraduate compilers courses. ChocoPy is a restricted subset of Python 3, which can easily be compiled to a target. The language is fully specified using formal grammar, typing rules, and operational semantics. I have built this project using LEX (lexical analyzer generator) and YACC (yet another compiler compiler). Lex and yacc are tools used to generate lexical analyzers and parsers.
## Aim 
The main aim on this project is to learn and practically implements the concepts of Compiler Construction. 
## Platform 
The platform used is Ubunto 20.04 LTS or any other UNIX platform which supports C language along with lex and yacc.
## Course Concepts 
we have deployed two main concepts/phases in my project:
1. Lexical Analyzer: (In this particular phase, we have wrote some scripts to divide our C Language code into useful Tokens.
2. Syntax Analyzer: (In this particular phase, we have wrote an algorithm that translates a program written in C programming language into python..
we have also worked on Line structures, comments section of code, removing blank/white spaces, identifying identifiers, and intensifying literals and delimiters. we have also wrote and algorithm  for python programs (e.g. methods/functions, class, statements, variables, literals, expressions, Ops etc.).

## Sample Language Used
We decided to Select C language for the purpose of generating tokens translates a program written in C programming language into python. But we used chocopy is a restricted subset of Python 3, which can easily be compiled to a target. ChocoPy programs can be executed directly in a Python (3.6+) interpreter.
ChocoPy programs can also be edited usinginput: standard Python syntax highlighting. ChocoPy uses Python 3.6 type annotations to enforce static type checking.
The type system supports nominal subtyping. The language is fully specified using formal grammar, typing rules, and operational semantics.
## Lexical Specification: 
### Line structure:
To accommodate this, ChocoPy defines three lexical tokens that are derived from whitespace: NEWLINE, INDENT, and DEDENT. The rules for when such tokens are generated  are described next using the concepts of physical and logical lines. Logical Line: NEWLINE (A physical line is a sequence of characters terminated by an end-of-line sequence) Physical Line: \r\n (A logical line is a physical line that contains at least one token that is not whitespace or comments. The end of a logical line is represented by the lexical token newline)
### Comments:
A comment starts with a hash character (#) that is not part of a string literal, and ends at the end of the physical line. Comments are   ignored by the lexical analyzer. 
### Whitespaces:
The whitespace characters space and tab can be used to separate tokens. It is needed between two tokens only if their concatenation       could otherwise it will be deal as a different token. Whitespace characters are not tokens, they are simply ignored. E.g: ab is a token   but a b is considered as two tokens. 
### Identifiers:
Contiguous sequence of characters is called as identifiers. 
Containing. [A-Za=z0-9]*
### Keywords:
Keywords are not recognized as identifiers. Some Chocopy keywords are: False, None, True, and, break, class, continue, def, del, elif,   else, for, global, if, import, in, is, lambda, return, try, while etc.
### Literals:
Integer literal in ChocoPy is made up of one or more digits like 0-9. There are non-zero valued integer literals and it is the left       most digit 0. If it is only character in the sequence. The integer value of these literals is interpreted in base 10. And its maximum     value can be 1-231 literal. Literal with larger value gives the lexical errors.
### Operators:
Operators in Chocopy
// % < > <= >= == != = ( ) [ ] ->
### Delimiters:
A delimiter (also known as separator) is a sequence of one or more characters used to specify the boundary between separate,             independent regions in plain text or other data streams. e.g ,  ; : . etc.
### Lexical Tokens: ##
The following tokens are used in ChocoPy language:
Identifier (Char) :> 0,1,2,3,5,6,7 .a, b, c, A, B, C, Z 

Line Structure (newline, Indent):> \n,\t,""," "

Keyword: >False, True, and, as, class, await, break, continue, def, elif, else, for, global, if, import, in, lambda, not, or, return,     while

Operator :> +,-,",*,//,%,==,<=,>= 

Literals: (String or int) :"asdasd" 123123

Delimiters: >. : ; , 

Predefine: > input, print,len 

Comments: >"#"
## Lexical Analyzer
I have generated token using “lex”, let’s talk about lex first:
1. Lex is basically a tool, which generates lexical analyzer.
2.	Lexical analyzer is a first phase of compiler which takes “high-level source code” as input, and generates output as tokens.
3.The input for lex toll is lex language and the tool itself is the lex compiler.
4.	The lex compiler transforms the input patterns into a transition diagram and generates code, in a file called inputfile.c.

![pic1](https://user-images.githubusercontent.com/61626142/184538300-5aaf3a6c-ae07-43c8-9ef7-eaf79fda6c52.PNG)


The file “flexCode.l” I have written is in lex language which describes the lexical analyzer to be generated, all the tokens are described here. The “flexCode.l” file is again converted to C language (Command: lex flexCode.l), the file is always named “sampleCode.c”. The “sampleCode.c” is easily complied into a file “a.out” by the built-in C compiler in Ubuntu (Command: gcc sampleCode.c). The “a.out” is a working lexical analyzer that takes a stream of input and produces a stream of tokens (Command: ./a.out).

### Structure of a Lex Program: ###
{Declarations}

%%

{Translation Rules}

%%

{Auxiliary Functions}
### Declarations:
This section includes declaration of variables.
### Translation Rules: 
It has the form => Pattern {Action}.
### Auxiliary Functions:
The third section holds whatever auxiliary functions are used in the actions.

# Syntax Analyzer:
we have convert C language program to python program.
## YACC: 
•	Stands for yet another compiler compiler.
•	It is a tool which generates LALR (Look Ahead LR) Parser.
•	Syntax analyzer is the second phase of compiler which takes input as tokens and generates syntax tree.

![pic2](https://user-images.githubusercontent.com/61626142/184538408-543caaea-9981-43ef-9bba-75e1125c5da8.PNG)


The file “test.l” I have written is in lex language which describes the lexical analyzer to be generated, all the tokens are described here. The “test.l” file is again converted to C language (Command: lex test.l), the file is always named “lex.yy.c”. Then the “test.y” (file containing grammar) is converted to “y.tab.c” file by YACC complier (Command: yacc –d –v test.l). The “lex.yy.c” and “y.tab.c” is easily complied into a file “a.out” by the built-in C compiler in Ubuntu (Command: gcc lex.yy.c y.tab.c -w). The “a.out” is a working lexical + syntax analyzer that takes a stream of input and tells us either the convert code is python  show .(Command: ./a.out).

### Structure of a YACC Program: ### 
{Definitions}

%%

{Rules}

%%

{Supplementary Code}

#### Definitions:
This section includes declaration of variables, configurations and establishing operator precedence.
#### Rules:
The required production section where I specify grammar rules. :  It has the form => Pattern {Action}.
#### Supplementary Code:
Used for ordinary C code and functions.



# Problems Faced 
### Problem 1: Yacc program:
When I merged our lex and yacc file means (.1 & .y extension file). I had so many errors in its compilations like (undefined reference of function in y file, redefinitions, declaration and so on). I had no idea about them because I never worked on such environment. It's my first time when I have designed parser so most of the errors were new to me so I have researched, took guide from videos and book and then finally after spending several hours on it I have resolved them.
### Problem 2: Installation Flex:
When I created my lexical analyzer I had many issues in its compilation. My lex file wasn't created because of installation issues in line, so after trying so many times finally I have got succeed.
# References:
•	https://chocopy.org/

•	https://www.python.org/dev/peps/pep-0526/

•	https://chocopy.org/chocopy_language_reference.pdf

•	http://dinosaur.compilertools.net/flex/manpage.html

•	https://chocopy.org/chocopy_implementation_guide.pdf

# Video Link 
### phase 2:
https://user-images.githubusercontent.com/61600313/184534708-097669a5-154c-4d50-8d1e-a67b3b93faf9.mp4
### phase 3:
https://user-images.githubusercontent.com/61626142/184538532-543cc44c-a252-43f4-8d57-d1709955fab0.mp4

