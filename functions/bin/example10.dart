void main(List<String> args) {
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Foo');
  describePerson(name: 'Foo', age: 20);
  describePerson(age: 20, name: 'Foo');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old.');
}
