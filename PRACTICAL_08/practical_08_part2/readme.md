To run this code:

Open terminal:
Input:
$ make      // to check if makefile works

Output:
gcc -o sampleapp main.c -I.
echo "Build complete"
Build complete

This means it is working. Next step in terminal:
Input: ./sampleapp

Output:
Value of a is 10
Value of b is 20
Value of c is 20.0122
Value of my_char is a
Value in memory for my_char_ptr is Hello
Value in memory for first char of my_char_ptr is H


So it compiles with the make file? Then run with the compiled file wich is sample.app and run like a bash script.

Type the following code into terminal to produce object files

    gcc -c main.c -I. 

Now we have main.o

Type the following code into terminal to produce .out files

    gcc -s main.c -I. 

now we have a.out

Type the following code into terminal to produce assembly files:

    gcc -S main.c -I.

Now we have main.s which is assembly file

Hitting the Wall:

    Include the -Wall option. This will ensure all warning messages that are generated during compilation will be printed out

        gcc -Wall -o main.c -I. 

Putting in a make file Need a build taget label and tab for recipe

    build:
        g++ -o sampleapp ./src/introduction/lesson_01/main.c -I.



