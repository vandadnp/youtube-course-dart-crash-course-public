import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': 'Main Street',
      'city': 'New York',
    },
  };

  final info2 = UnmodifiableMapView(info);

  info.addAll(
    {
      'phone': '123-456-7890',
    },
  );

  try {
    info2.addAll(
      {
        'phone': '123-456-7890',
      },
    );
  } catch (e) {
    print(e);
  }
}
