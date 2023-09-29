import 'package:dio/dio.dart';
import 'package:pokeapi_client/pokeapi_client.dart';
import 'package:pokeapp/app/app.dart';
import 'package:pokeapp/bootstrap.dart';

void main() {
  final pokeApiClient = PokeApiClient(
    Dio(),
    baseUrl: 'https://pokeapi.co/api/v2',
  );

  bootstrap(() => const App());
}
