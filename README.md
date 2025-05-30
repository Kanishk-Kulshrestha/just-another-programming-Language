# JAPL – Just Another Programming Language

JAPL is a lightweight, custom-built programming language designed for simplicity and control. Created from scratch using Python, it includes its own lexer, parser, and interpreter. This project showcases core compiler design principles and low-level control over language execution.

## Features

- Custom syntax and grammar
- Lexical analysis (tokenizer)
- Parser (generates abstract syntax tree)
- Interpreter (evaluates code)

## Requirements

- gcc compiler
- Windows (as it uses batch script a part of compilation)

## Example Code (Fibonacci numbers upto N)

```
PRINT "How many fibonacci numbers do you want?"

INPUT nums
PRINT ""

LET a = 0
LET b = 1
WHILE nums > 0 REPEAT
    PRINT a
    LET c = a + b
    LET a = b
    LET b = c
    LET nums = nums - 1
ENDWHILE
```


### Clone the Repository

```bash
git clone https://github.com/Kanishk-Kulshrestha/JAPL.git
cd JAPL
builder.bat [JAPL file name] [Output file name](optional)
```
