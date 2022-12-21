void main(List<String> args) {
  print([1, 2, 3].sum);
  print([2.2, 3.3, 4.4].sum);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
