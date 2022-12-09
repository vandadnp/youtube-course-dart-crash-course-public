void main(List<String> args) {
  describe();
  describe(something: null);
  describe(something: 'Hello, Dart!');
}

void describe({
  String? something = 'Hello, world!',
}) {
  print(something);
}
