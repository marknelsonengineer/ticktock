#include <stdio.h>
#include <unistd.h>
#define x(y) printf(y"\n");sleep(1);
int main(){do{x("Tick")x("Tock")}while(1);}
