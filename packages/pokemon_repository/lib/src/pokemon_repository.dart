import 'package:equatable/equatable.dart';
import 'package:pokeapi_client/pokeapi_client.dart';

/// {@template article_failure}
/// A base failure for the article repository failures.
/// {@endtemplate}
abstract class ArticleFailure with EquatableMixin implements Exception {
  /// {@macro article_failure}
  const ArticleFailure(this.error);

  /// The error which was caught.
  final Object error;

  @override
  List<Object> get props => [error];
}

/// {@template get_article_failure}
/// Thrown when fetching an article fails.
/// {@endtemplate}
class GetArticleFailure extends ArticleFailure {
  /// {@macro get_article_failure}
  const GetArticleFailure(super.error);
}

/// {@template article_repository}
/// A repository that manages article data.
/// {@endtemplate}
class PokemonRepository {
  /// {@macro article_repository}
  const PokemonRepository({
    required PokeApiClient apiClient,
  }) : _apiClient = apiClient;

  final PokeApiClient _apiClient;

  /// Requests pokemons content.
  ///
  /// Supported parameters:
  /// * [limit] - The number of results to return.
  /// * [offset] - The (zero-based) offset of the first item
  /// in the collection to return.
  Future<PokeApiResponse> fetchPokemons({
    int? limit,
    int? offset,
  }) async {
    try {
      return await _apiClient.getPokemons(
        limit: limit ?? 10000,
        offset: offset ?? 10,
      );
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(GetArticleFailure(error), stackTrace);
    }
  }
}
