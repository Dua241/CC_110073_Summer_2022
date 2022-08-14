## Phase-1 Description ##
We decided to Select C langange for the purpose of generating tokens.
## Langange Specification ##
#### Identifiers: 
Contiguous sequence of characters is called as identifiers. 
Containing. [A-Za=z0-9]*
#### Keywords:
Keywords are not recognized as identifiers. Some  keywords are: False, None, True, and, break, class, continue, def, del, elif, else, for, global, if, import, in, is, lambda, return, try, while etc.
#### Operators:
Operators in Language
// % < > <= >= == != = ( ) [ ] ->
#### Delimiters:
A delimiter (also known as separator) is a sequence of one or more characters used to specify the boundary between separate, independent regions in plain text or other data streams. E.g ,  ; : . etc.
## Langange Specification Link ##
https://docs.oracle.com/cd/E19504-01/802-5880/lex-6/index.html?fbclid=IwAR2qqgZQs-O4dYOuf5eas6mQkDkeUEt2p8VrzNzEXJp-Xd-fkdDPsFSmwUs
## Example Code ##
```
int main() {
    int a;
    float b;

    a = 45.5;
    b = 23;

    while(a) {
        a = a / 2;
    }

    if (a == 0) {
        b = a / 2;
    }
}
```



