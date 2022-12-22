void main(List<String> args) {
  const tuple = Tuple(1, 20.2);
  print(tuple);
  final swapped = tuple.swap();
  print(swapped);
  print(tuple.sum);
  print(swapped.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple, left = $left, right = $right';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
