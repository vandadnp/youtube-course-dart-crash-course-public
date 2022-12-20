void main(List<String> args) {
  print({'name': 'John', 'age': 42} + {'address': '123 Main St'});
  print({'name': 'John', 'age': 42} - {'age': 42});
  print({'name': 'John', 'age': 42} * 2);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {
        ...this,
        ...other,
      };

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
