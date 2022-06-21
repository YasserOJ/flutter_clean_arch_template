import 'dart:io';

Future<String> readFileFromAssets(String name) async {
  final String _result = await File('test/test_assets/$name').readAsString();
  return _result;
}
