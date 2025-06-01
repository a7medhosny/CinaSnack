part of 'movie_cubit.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  // Popular Movies States
  const factory MovieState.getPopularMoviesLoading() = getPopularMoviesLoading;
  const factory MovieState.getPopularMoviesSuccess(
    MovieResponseModel movieResponse,
  ) = getPopularMoviesSuccess;
  const factory MovieState.getPopularMoviesFailure(String errorMessage) =
      getPopularMoviesFailure;

  // Top Rated Movies States
  const factory MovieState.getTopRatedMoviesLoading() =
      getTopRatedMoviesLoading;
  const factory MovieState.getTopRatedMoviesSuccess(
    MovieResponseModel movieResponse,
  ) = getTopRatedMoviesSuccess;
  const factory MovieState.getTopRatedMoviesFailure(String errorMessage) =
      getTopRatedMoviesFailure;

  // Upcoming Movies States
  const factory MovieState.getUpcomingMoviesLoading() =
      getUpcomingMoviesLoading;
  const factory MovieState.getUpcomingMoviesSuccess(
    MovieResponseModel movieResponse,
  ) = getUpcomingMoviesSuccess;
  const factory MovieState.getUpcomingMoviesFailure(String errorMessage) =
      getUpcomingMoviesFailure;

  // Now Playing Movies States
  const factory MovieState.getNowPlayingMoviesLoading() =
      getNowPlayingMoviesLoading;
  const factory MovieState.getNowPlayingMoviesSuccess(
    MovieResponseModel movieResponse,
  ) = getNowPlayingMoviesSuccess;
  const factory MovieState.getNowPlayingMoviesFailure(String errorMessage) =
      getNowPlayingMoviesFailure;
  // Movie Details States
  const factory MovieState.getFullMovieDataLoading() = getFullMovieDataLoading;
  const factory MovieState.getFullMovieDataSuccess(
    Map<String, dynamic> fullMovieData,
  ) = getFullMovieDataSuccess;
  const factory MovieState.getFullMovieDataFailure(String errorMessage) =
      getFullMovieDataFailure;
}
