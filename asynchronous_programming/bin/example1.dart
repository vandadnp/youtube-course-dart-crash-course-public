void main(List<String> args) async {
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getUserName() async => 'John Doe';
Future<String> getAddress() => Future.value('123 Main St');

Future<String> getPhoneNumber() => Future.delayed(
      const Duration(seconds: 1),
      () => '555-555-5555',
    );

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

Future<String> getCountry() async => 'India';

// async keyword doesn't really contribute with anything here
Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 1),
      () => '12345',
    );
