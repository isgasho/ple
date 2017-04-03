proc sum_of_even_squares(a) {
  // Does not work for empty arrays
  return + reduce ([x in a] if x % 2 == 0 then x*x else 0);
}

assert(sum_of_even_squares([7]) == 0);
assert(sum_of_even_squares([7, 3]) == 0);
assert(sum_of_even_squares([7, 3, -8]) == 64);
assert(sum_of_even_squares([7, 3, -8, 4]) == 80);
assert(sum_of_even_squares([7, 3, -8, 4, 1]) == 80);
assert(sum_of_even_squares([7, 3, -8, 4, 1, 0]) == 80);
assert(sum_of_even_squares([7, 3, -8, 4, 1, 0, 11]) == 80);
assert(sum_of_even_squares([7, 3, -8, 4, 1, 0, 11, 2]) == 84);
