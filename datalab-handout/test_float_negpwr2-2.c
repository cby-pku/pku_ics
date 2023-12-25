unsigned test_float_negpwr2(int x) {
  float result = 1.0;
  float p2 = 0.5;
  int recip = (x < 0);
  /* treat tmin specially */
  if ((unsigned)x == 0x80000000) {
      return 0x7f800000;
  }
  if (recip) {
    x = -x;
    p2 = 2.0;
  }
  while (x > 0) {
    if (x & 0x1)
      result = result * p2;
    p2 = p2 * p2;
    x >>= 1;
  }
  return f2u(result);
}
