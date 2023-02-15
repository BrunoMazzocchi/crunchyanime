// ignore_for_file: prefer_const_constructors
import 'package:kitsu_api/kitsu_api.dart';
import 'package:test/test.dart';

void main() {
  group('KitsuClient', () {
    test('search', () async {
      final client = KitsuClient();
      final result = await client.search('naruto');
      expect(result.data, greaterThan(0));
    });
  });
}