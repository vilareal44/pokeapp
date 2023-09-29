import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokeapi_client/pokeapi_client.dart';

void main() {
  group('PokeapiClient', () {
    test('can be instantiated', () {
      expect(PokeApiClient(Dio()), isNotNull);
    });
  });
}
