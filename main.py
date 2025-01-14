from lex import *
from parse import *
from emit import *
import sys

def main():
    print("DA COMPILA")

    if len(sys.argv) != 2:
        sys.exit("Error: compiler needs source file as argument.")
    with open(sys.argv[1], 'r') as inputFile:
        source = inputFile.read()

    lexer = Lexer(source)
    emitter = Emitter("out.c")
    parser = Parser(lexer, emitter)

    parser.program()
    emitter.writeFile()
    print("Parsing completed.")

main()
