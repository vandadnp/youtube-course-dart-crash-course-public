void main(List<String> args) {
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue();
  print('We are here');
  print(yourValue);

  // expectations:
  // getValue called
  // We are here
  // 10
}

int getValue() {
  print('getValue called');
  return 10;
}
