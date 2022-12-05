void main(List<String> args) {
  const theirNames = ['Alice', 'Bob', 'Carol'];
  print(theirNames);

  // ignore: non_constant_identifier_names
  final Wow = 'wow';
  print(Wow);

  // ignore: constant_identifier_names
  const SomeName = 'Vandad';
  print(SomeName);
}
