void main(List<String> args) {
  // doSomethingWith(); // invalid code
  doSomethingWith(name: 'Foo');
  // doSomethingWith(name: null); // invalid code
}

void doSomethingWith({
  required String name,
}) {
  print('Hello, $name!');
}
