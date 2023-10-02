import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapi_client/pokeapi_client.dart';
import 'package:pokeapp/home/cubit/home_cubit.dart';
import 'package:pokeapp/l10n/l10n.dart';
import 'package:pokemon_repository/pokemon_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(
        pokemonRepository: context.read<PokemonRepository>(),
      )..fetchPokemons(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
      title: 'PokeApp'.hardcoded,
      color: Theme.of(context).primaryColor,
      child: Scaffold(
        appBar: AppBar(
          title: AppLogo.light(),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state.status.isLoading) {
                return const _Loading();
              }

              if (state.status.isSuccess || state.status.isLoadMoreLoading) {
                return _PokemonListPaginated(
                  count: state.count,
                  data: state.data!,
                );
              }

              if (state.status.isFailure) {
                return const _Error();
              }

              return const Center(child: Text('...'));
            },
          ),
        ),
      ),
    );
  }
}

class _PokemonListPaginated extends StatelessWidget {
  const _PokemonListPaginated({
    required this.count,
    required this.data,
  });

  final int count;
  final List<Pokemon> data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.all(AppSpacing.lg),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final item = data[index];
                return InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: const Icon(Icons.bug_report),
                    title: Text(item.name),
                    subtitle: Text(item.url),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                );
              },
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state.status.isLoadMoreLoading) {
                return const _Loading();
              }
              return AppButton.primary(
                child: Text(l10n.loadMoreButtonText),
                onPressed: () {
                  context
                      .read<HomeCubit>()
                      .fetchPokemons(offset: state.nextOffset);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}

class _Error extends StatelessWidget {
  const _Error();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Erro'.hardcoded));
  }
}
