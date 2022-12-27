import 'dart:async';

void main(List<String> args) async {
  await for (final capitalizedName in names.capitalized) {
    print(capitalizedName);
  }
  print("---------------------------");
  await for (final capitalizedName in names.capitalizedUsingMap) {
    print(capitalizedName);
  }
}

Stream<String> names = Stream.fromIterable(
  [
    'Seth',
    'Kathy',
    'Lars',
  ],
);

extension on Stream<String> {
  Stream<String> get capitalized => transform(
        ToUpperCase(),
      );
  Stream<String> get capitalizedUsingMap => map(
        (name) => name.toUpperCase(),
      );
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (name) => name.toUpperCase(),
    );
  }
}
