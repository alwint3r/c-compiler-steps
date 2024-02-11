# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 418 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "main.c" 2
# 1 "./lib.h" 1




int whatido(int d, int e);
# 2 "main.c" 2

int mul(int a, int b) {
  int r = a + 255;
  int s = b + 255;
  return r * s;
}

int main() {
  int res = mul(1, 4);
  return whatido(1, res);
}
