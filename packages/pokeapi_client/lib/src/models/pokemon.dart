import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

/// {@template pokemon}
/// Pokemon model
/// {@endtemplate}
@JsonSerializable()
class Pokemon {
  /// {@macro pokemon}
  Pokemon({required this.name, required this.detailsUrl});

  /// Factory constructor that parse json response from api
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  /// Pokemon name
  final String name;

  /// Pokemon detail url
  final String detailsUrl;
}
