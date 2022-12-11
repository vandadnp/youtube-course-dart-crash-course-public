import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('------------------');
  testCanonicalizedMap();
  print('------------------');
  testCombinedIterableView();
  print('------------------');
  testCombinedListView();
  print('------------------');
  testCombinedMapView();
  print('------------------');
  testMapMerging();
  print('------------------');
}

void testMapMerging() {
  const info1 = {
    'name': 'John 1',
    'age': 30,
    'height': 1.8,
  };
  const info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };
  final merge = mergeMaps(
    info1,
    info2,
    value: (one, two) => two,
  );
  print(merge);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap);
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

void testCombinedListView() {
  // CombinedListView is a view of a list of lists, and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];
  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);
  print(names);
  if (names.contains('Sven')) {
    print('Sven is in the list');
  }
  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];
  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  two.add(40);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(5));
  print(combined.contains(10));
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'address': 'New York',
  };

  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      return key.length;
    },
  );
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
