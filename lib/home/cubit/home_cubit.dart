import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapi_client/pokeapi_client.dart';
import 'package:pokemon_repository/pokemon_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required PokemonRepository pokemonRepository})
      : _pokemonRepository = pokemonRepository,
        super(const HomeState(nextOffset: 0));

  final PokemonRepository _pokemonRepository;

  Future<void> fetchPokemons({
    int limit = 10,
    int offset = 0,
  }) async {
    if (offset == 0) {
      emit(state.copyWith(status: HomeStatus.loading));
    } else {
      emit(state.copyWith(status: HomeStatus.loadMoreLoading));
    }

    try {
      await Future<void>.delayed(const Duration(seconds: 1));

      final response = await _pokemonRepository.fetchPokemons(
        limit: limit,
        offset: offset,
      );

      emit(
        state.copyWith(
          status: HomeStatus.success,
          count: response.count,
          data: [
            ...state.data ?? [],
            ...response.results,
          ],
          nextOffset: offset + limit,
        ),
      );
    } catch (error, stackTrace) {
      emit(state.copyWith(status: HomeStatus.failure));
      addError(error, stackTrace);
    }
  }
}
