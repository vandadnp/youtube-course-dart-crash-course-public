void main(List<String> args) async {
  // final length = await calculateLength(await getFullName());
  // print(length);

  final length = await getFullName().then(
    (value) => calculateLength(value),
  );
  print(length);
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'John Doe',
    );

Future<int> calculateLength(String value) => Future.delayed(
      const Duration(seconds: 1),
      () => value.length,
    );
