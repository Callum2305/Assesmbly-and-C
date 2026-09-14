#include <stdio.h>

//Add extra arguement. Also add sub function. Print results line added too.
extern int add(int a, int b, int c);
extern int sub(int a, int b);

int main(int argc, char **argv)
{
  printf("Add result: %d\n", add(4, 6, 2));
  printf("Sub result: %d\n", sub(10, 3));
  return 0;
}