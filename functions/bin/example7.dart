void main(List<String> args) {
  doSomethingWith();
  doSomethingWith(name: 'Foo');
  // doSomethingWith(name: null);
}

void doSomethingWith({
  String name = 'Bar',
}) {
  print('Hello, $name!');
}
