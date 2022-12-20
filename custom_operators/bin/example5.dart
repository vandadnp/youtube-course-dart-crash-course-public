void main(List<String> args) {
  print([1, 2, 3] - [1, 2]);
  print([1, 2, 3] - [1, 2, 3]);
  print([1, 2, 3] - [3, 1, 2]);
  print(['Foo', 'Bar', 'Baz'] - ['Baz', 'Bar']);
  print(['Foo', 'Bar', 'Baz'] - ['Baz']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
