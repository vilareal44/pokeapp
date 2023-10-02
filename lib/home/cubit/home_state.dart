part of 'home_cubit.dart';

enum HomeStatus { initial, loading, success, failure, loadMoreLoading }

extension HomeStatusX on HomeStatus {
  bool get isInitial => this == HomeStatus.initial;
  bool get isLoading => this == HomeStatus.loading;
  bool get isSuccess => this == HomeStatus.success;
  bool get isFailure => this == HomeStatus.failure;
  bool get isLoadMoreLoading => this == HomeStatus.loadMoreLoading;
}

final class HomeState extends Equatable {
  const HomeState({
    required this.nextOffset,
    this.status = HomeStatus.initial,
    this.count = 0,
    this.data,
  });

  final HomeStatus status;
  final int count;
  final List<Pokemon>? data;
  final int nextOffset;

  HomeState copyWith({
    HomeStatus? status,
    int? count,
    List<Pokemon>? data,
    int? nextOffset,
  }) {
    return HomeState(
      status: status ?? this.status,
      count: count ?? this.count,
      data: data ?? this.data,
      nextOffset: nextOffset ?? this.nextOffset,
    );
  }

  @override
  List<Object?> get props => [status, count, data, nextOffset];
}
