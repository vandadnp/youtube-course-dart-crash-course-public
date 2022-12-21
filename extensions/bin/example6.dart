void main(List<String> args) {
  print(AnimalType.cat.nameContainsUpperCaseLetters);
  print(AnimalType.dog.nameContainsUpperCaseLetters);
  print(AnimalType.goldFish.nameContainsUpperCaseLetters);
}

enum AnimalType {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetters => name.contains(
        RegExp(
          r'[A-Z]',
        ),
      );
}
