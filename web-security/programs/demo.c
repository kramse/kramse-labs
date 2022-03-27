#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char **argv)
{
char buf[10];
strcpy(buf, argv[1]);
printf("navnet er: %s\n",buf);
}
int the_shell()
{ system("/bin/dash"); }
