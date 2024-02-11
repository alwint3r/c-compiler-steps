#include "lib.h"

int mul(int a, int b) {
  int r = a + 255;
  int s = b + 255;
  return r * s;
}

int main() {
  int res = mul(1, 4);
  return whatido(1, res);
}
