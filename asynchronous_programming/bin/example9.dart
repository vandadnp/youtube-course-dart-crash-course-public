import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController<String>();
  controller.sink.add('Hello');
  controller.sink.add('World');

  await for (final value in controller.stream) {
    print(value);
  }

  controller.close();
}
