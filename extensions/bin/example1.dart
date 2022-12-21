void main(List<String> args) {
  print('Hello, World!'.reversed);
}

extension on String {
  String get reversed => split('').reversed.join();
}
