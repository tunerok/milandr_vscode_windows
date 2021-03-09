#include "main.h"

int main(void)
{
  init_led();
  while (1)
  {
    write_LED(1);
    for(int i = 0; i < 1000000; i++){};
    write_LED(0);
    for(int i = 0; i < 1000000; i++){};
  }
  return 0;
}