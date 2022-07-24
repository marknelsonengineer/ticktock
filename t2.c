#include <stdio.h>
#include <unistd.h>
#define S sleep(1)
int main(){do{printf("Tick\n");S;printf("Tock\n");S;}while(1);}
