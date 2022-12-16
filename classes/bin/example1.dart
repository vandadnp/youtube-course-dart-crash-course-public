void main(List<String> args) {
  const person1 = Person(
    name: 'John',
    age: 20,
  );
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });
}
