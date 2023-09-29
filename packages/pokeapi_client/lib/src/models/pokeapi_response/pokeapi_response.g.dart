// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeApiResponse _$PokeApiResponseFromJson(Map<String, dynamic> json) =>
    PokeApiResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokeApiResponseToJson(PokeApiResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
