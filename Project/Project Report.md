## Introduction ##
This project is all about Chocopy language compiler. In this project I have used ChocoPy language. ChocoPy is a programming language designed for classroom use in undergraduate compilers courses. ChocoPy is a restricted subset of Python 3, which can easily be compiled to a target. The language is fully specified using formal grammar, typing rules, and operational semantics. I have built this project using LEX (lexical analyzer generator) and YACC (yet another compiler compiler). Lex and yacc are tools used to generate lexical analyzers and parsers.

## Aim ##
The main aim on his project is to learn and practically implements the concepts of Compiler Construction. 

## Platform ##

The platform used is Ubunto 20.04 LTS or any other UNIX platform which supports C language along with lex and yacc.


## Course Concepts ##
I have deployed two main concepts/phases in my project:
1.	Lexical Analyzer (In this particular phase, I have wrote some scripts to divide our Python (ChocoPy) code into useful Tokens.
2.	Syntax Analyzer (In this particular phase, I have wrote an algorithm for checking syntax errors in our ChocoPy code).
I have also worked on Line structures, comments section of code, removing blank/white spaces, identifying identifiers, and intensifying literals and delimiters. I have also wrote and checked Grammar for python programs (e.g. methods/functions, class, statements, variables, literals, expressions, Ops etc.).


## sample language used ##
ChocoPy is a restricted subset of Python 3, which can easily be compiled to a target. ChocoPy programs can be executed directly in a Python (3.6+) interpreter. ChocoPy programs can also be edited using standard Python syntax highlighting. ChocoPy uses Python 3.6 type annotations to enforce static type checking. The type system supports nominal subtyping. The language is fully specified using formal grammar, typing rules, and operational semantics.


## Lexical Specification ##
   	Line structure:
To accommodate this, ChocoPy defines three lexical tokens that are derived from whitespace: NEWLINE, INDENT, and DEDENT. The rules for when such tokens are generated are described next using the concepts of physical and logical lines. Logical Line: NEWLINE (A physical line is a sequence of characters terminated by an end-of-line sequence) Physical Line: \r\n (A logical line is a physical line that contains at least one token that is not whitespace or comments. The end of a logical line is represented by the lexical token NEWLINE.)

    
   Comments:
   
   A comment starts with a hash character (#) that is not part of a string literal, and ends at the end of the physical line. Comments are ignored by the lexical          analyzer.
   
   Whitespaces:
   
   The whitespace characters space and tab can be used to separate tokens. It is needed between two tokens only if their concatenation could otherwise it will be deal    as a different token. Whitespace characters are not tokens, they are simply ignored. E.g: ab is a token but a b is considered as two tokens.
   
  
   Identifiers:
   
   Contiguous sequence of characters is called as identifiers. 
   Containing. [A-Za=z0-9]*
   
   
   Keywords:
   
   Keywords are not recognized as identifiers. Some Chocopy keywords are: False, None, True, and, break, class, continue, def, del, elif, else, for, global, if,          import, in, is, lambda, return, try, while etc.
   
   
   Literals:
   
   Integer literal in ChocoPy is made up of one or more digits like 0-9. There are non-zero valued integer literals and it is the left most digit 0. If it is only        character in the sequence. The integer value of these literals is interpreted in base 10. And its maximum value can be 1-231 literal. Literal with larger value
   gives the lexical errors.
   
   Operators:
   
   Operators in ChocoPy
   // % < > <= >= == != = ( ) [ ] ->
   
   
   Delimiters:
   
   A delimiter (also known as separator) is a sequence of one or more characters used to specify the boundary between separate, independent regions in plain text or      other data streams. E.g ,  ; : . etc.
   
   
   Lexical Tokens:
   
   The following tokens are used in ChocoPy language
   
   Identifier (Char) :> 0,1,2,3,5,6,7 .a, b, c, A, B, C, Z 
   Line Structure (newline, Indent):> \n,\t,""," " 
   Keyword: >False, True, and, as, class, await, break, continue, def, elif, else, for, global, if, import, in, lambda, not, or, return, while
   Operator :> +,-,",*,//,%,==,<=,>= 
   Literals: (String or int) :"asdasd" 123123 
   Delimiters: >. : ; , 
   Predefine: > input, print, len  
   Comments: >"#"
   
   
     Grammar:

   ![image](https://user-images.githubusercontent.com/77384566/184501566-de2fc168-cc53-4e84-8f6a-edca69bef428.png)
   
   
   ![image](https://user-images.githubusercontent.com/77384566/184501648-31c9111a-48b3-40ca-b77c-923c83be2f58.png)
   
   
    Lexical Analyzer:
    
   I have generated token using “lex”, let’s talk about lex first:
    
1  Lex is basically a tool, which generates lexical analyzer.
2	Lexical analyzer is a first phase of compiler which takes “high-level source code” as input, and generates output as tokens.
3	The input for lex toll is lex language and the tool itself is the lex compiler.
4	The lex compiler transforms the input patterns into a transition diagram and generates code, in a file called inputfile.c.

   



    






