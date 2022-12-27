void main(List<String> args) async {
  final sum = await getAllAges().reduce(add);
  print('Sum of all numbers is $sum');
}

int add(int a, int b) => a + b;

Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}
