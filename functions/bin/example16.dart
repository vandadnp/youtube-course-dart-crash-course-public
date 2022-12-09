void main(List<String> args) {
  print(doSomething(10, 20)());
}

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
