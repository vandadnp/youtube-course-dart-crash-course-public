void main(List<String> args) {
  final person = Person();

  try {
    // avoid doing this in real code since it's against
    // the recommendations. instead use nullable values
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
