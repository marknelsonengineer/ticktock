#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>

int main() {
   unsigned char state = 0;

   while( true ) {
      printf( (state ^= 0xff) ? "Tick\n" : "Tock\n" ) ;
      sleep( 1 );
   }
}

