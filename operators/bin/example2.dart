void main(List<String> args) {
  /// 4 types of operators
  /// unary prefix, unary postfix, binary infix, compound assignment

  int age = 30;
  print(--age);
  print(!true);
  print(!false);
  print(++age);

  /// unary bitwise completement prefix operator
  print(~1);

  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1110)
  ///
  print(-age);
  print(-(-age));
}
