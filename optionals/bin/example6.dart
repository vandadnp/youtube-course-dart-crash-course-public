void main(List<String> args) {
  List<String?>? names;
  names?.add('Foo');
  names?.add(null);
  print(names);

  final String? first = names?.first;
  print(first ?? 'No first name found');

  names = [];
  names.add('Baz');
  names.add(null);
  print(names);
}
