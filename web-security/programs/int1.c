#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv)
{       (void) argc;  (void) argv;
		 int i1 = 32767; 
		printf("First debug int is %d\n", i1);
		i1++;
		printf("Second debug int is now %d \n", i1);
}
