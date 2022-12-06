void main(List<String> args) {
  // binary infix operators
  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20); // remainder
  print(age == 20);
  print(age != 20);

  print(age > 20); // true
  print(age < 20); // false
  print(age >= 20); // true
  print(age <= 20); // false

  // bitwise infix operators
  print(age & 20); // bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0
  print(age | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0
  print(age ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0

  print(age << 20); // bitwise left shift
  print(age >> 20); // bitwise right shift

  /// 0110 0011
  /// shift left by 2
  /// 1000 1100
}
