void main(List<String> args) async {
  await for (final value in numbers()) {
    print(value);
  }
  print("---------------------");
  await for (final value in numbers(
    end: 10,
    f: evenNumbersOnly,
  )) {
    print(value);
  }
  print("---------------------");
  await for (final value in numbers(
    end: 10,
    f: oddNumbersOnly,
  )) {
    print(value);
  }
}

typedef IsIncluded = bool Function(int value);

bool evenNumbersOnly(int value) => value % 2 == 0;
bool oddNumbersOnly(int value) => value % 2 != 0;

Stream<int> numbers({
  int start = 0,
  int end = 4,
  IsIncluded? f,
}) async* {
  for (var i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
