import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['John', 'Jane'];
  names.add('Jack');
  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('Jill');
  } catch (e) {
    print(e);
  }
}
