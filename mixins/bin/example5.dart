void main(List<String> args) {
  final cats = <Cat>{
    Cat(name: 'Kitty 1', age: 2),
    Cat(name: 'Kitty 2', age: 3),
    Cat(name: 'Kitty 1', age: 2),
  };
  cats.forEach(print);
}

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet ($type), name = $name, age = $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
        type,
      );

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  Cat({
    required this.age,
    required this.name,
  }) : type = PetType.cat;
}
