import 'package:json_annotation/json_annotation.dart';

import 'package:pokeapi_client/src/models/pokemon/pokemon.dart';

part 'pokeapi_response.g.dart';

/// {@template pokemon}
/// Pokeapi response model
/// {@endtemplate}
@JsonSerializable()
class PokeApiResponse {
  /// {@macro pokeapi_response}
  PokeApiResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  /// Factory constructor that parse json response from api
  factory PokeApiResponse.fromJson(Map<String, dynamic> json) =>
      _$PokeApiResponseFromJson(json);

  final int count;
  final String? next;
  final String? previous;
  final List<Pokemon> results;
}
