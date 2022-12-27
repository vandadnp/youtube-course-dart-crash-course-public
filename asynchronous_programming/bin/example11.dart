void main(List<String> args) async {
  final allNames = await getNames().toList();
  for (final name in allNames) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jack';
}
