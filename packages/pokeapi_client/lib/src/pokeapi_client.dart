import 'package:dio/dio.dart';
import 'package:pokeapi_client/src/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'pokeapi_client.g.dart';

/// {@template pokeapi_client}
/// PokeApi client
/// {@endtemplate}
@RestApi()
abstract class PokeApiClient {
  /// {@macro pokeapi_client}
  factory PokeApiClient(Dio dio, {String baseUrl}) = _PokeApiClient;

  /// Get all pokemons with paging capability
  @GET('/pokemons')
  Future<List<Pokemon>> getPokemons({
    @Query('limit') int limit = 10,
    @Query('offset') int offset = 0,
  });
}
