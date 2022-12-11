import 'package:collection/collection.dart';

void main(List<String> args) {
  final foo = Person(
    name: 'Foo',
    siblings: [
      Person(
        name: 'Bar',
      ),
    ],
  );

  try {
    foo.siblings?.add(
      Person(
        name: 'Baz',
      ),
    );
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
}
