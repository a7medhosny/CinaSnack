import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:movie_app/core/helpers/connectivity/cubit/connectivity_cubit.dart';
import 'package:movie_app/features/movies/data/apis/movie_api_service.dart';
import 'package:movie_app/core/networking/dio_factory.dart';
import 'package:movie_app/features/tv_series/data/apis/tv_series_api_service.dart';

import 'package:movie_app/features/movies/data/repos/home_repo.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';

import 'package:movie_app/features/tv_series/data/repos/tv_series_repo.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';

import 'package:movie_app/features/search/data/apis/search_api_service.dart';
import 'package:movie_app/features/search/data/repos/search_repo.dart';
import 'package:movie_app/features/search/logic/cubit/search_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  _setupNetwork();
  _setupMovies();
  _setupTvSeries();
  _setupSearch();
  _setupConnectivity();
}

void _setupNetwork() {
  final dio = DioFactory.getDio();

  getIt
    ..registerLazySingleton<Dio>(() => dio)
    ..registerLazySingleton<MovieApiService>(() => MovieApiService(getIt()))
    ..registerLazySingleton<TvSeriesApiService>(
      () => TvSeriesApiService(getIt()),
    )
    ..registerLazySingleton<SearchApiService>(() => SearchApiService(getIt()));
}

void _setupMovies() {
  getIt
    ..registerLazySingleton<MoviesRepo>(() => MoviesRepo(apiService: getIt()))
    ..registerFactory<MovieCubit>(() => MovieCubit(moviesRepo: getIt()));
}

void _setupTvSeries() {
  getIt
    ..registerLazySingleton<TvSeriesRepo>(
      () => TvSeriesRepo(tvSeriesApiService: getIt()),
    )
    ..registerFactory<TvSeriesCubit>(
      () => TvSeriesCubit(tvSeriesRepo: getIt()),
    );
}

void _setupSearch() {
  getIt
    ..registerLazySingleton<SearchRepo>(
      () => SearchRepo(searchApiService: getIt()),
    )
    ..registerFactory<SearchCubit>(() => SearchCubit(getIt()));
}

void _setupConnectivity() {
  getIt.registerFactory<ConnectivityCubit>(() => ConnectivityCubit());
}
