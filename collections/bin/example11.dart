void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Bob');
  yield 'Bob';
  print('Producing Alice');
  yield 'Alice';
  print('Producing Joe');
  yield 'Joe';
  print('Producing template names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing "Bob"');
  yield 'Foo';
  print('Producing "Alice"');
  yield 'Bar';
  print('Producing "Joe"');
  yield 'Baz';
}
