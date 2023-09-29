import 'package:dio/dio.dart';
import 'package:pokeapi_client/pokeapi_client.dart';
import 'package:pokeapp/app/app.dart';
import 'package:pokeapp/bootstrap.dart';
import 'package:pokemon_repository/pokemon_repository.dart';

void main() {
  bootstrap(() async {
    final pokeApiClient = PokeApiClient(
      Dio(),
      baseUrl: 'https://pokeapi.co/api/v2',
    );

    final pokemonRepository = PokemonRepository(
      apiClient: pokeApiClient,
    );

    return App(pokemonRepository: pokemonRepository);
  });
}
