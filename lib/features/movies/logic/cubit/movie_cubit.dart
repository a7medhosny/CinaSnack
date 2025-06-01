import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/networking/api_error_handler.dart';
import 'package:movie_app/core/networking/api_result.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/data/repos/home_repo.dart';

part 'movie_state.dart';
part 'movie_cubit.freezed.dart';

class MovieCubit extends Cubit<MovieState> {
  final MoviesRepo moviesRepo;
  MovieCubit({required this.moviesRepo}) : super(MovieState.initial());
  // MovieResponseModel? getPopularMovieResponse,
  //     getTopRatedMovieResponse,
  //     getNowPlayingMovieResponse,
  //     getUpcomingMovieResponse;
  // Get Popular Movies
  Future<void> getPopularMovies() async {
    emit(MovieState.getPopularMoviesLoading());
    final response = await moviesRepo.getPopularMovies();
    switch (response) {
      case Success(:final data):
        {
          // getPopularMovieResponse = data;
          emit(MovieState.getPopularMoviesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          MovieState.getPopularMoviesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  // Get Top Rated Movies
  Future<void> getTopRatedMovies() async {
    print('getTopRatedMovies called');
    emit(MovieState.getTopRatedMoviesLoading());
    final response = await moviesRepo.getTopRatedMovies();
    switch (response) {
      case Success(:final data):
        {
          // getTopRatedMovieResponse = data;
          emit(MovieState.getTopRatedMoviesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          MovieState.getTopRatedMoviesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  // Get UPComing Movies
  Future<void> getUpcomingMovies() async {
    emit(MovieState.getUpcomingMoviesLoading());
    final response = await moviesRepo.getUpcomingMovies();
    switch (response) {
      case Success(:final data):
        {
          // getUpcomingMovieResponse = data;
          emit(MovieState.getUpcomingMoviesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          MovieState.getUpcomingMoviesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  // Get Now Playing Movies
  Future<void> getNowPlayingMovies() async {
    emit(MovieState.getNowPlayingMoviesLoading());
    final response = await moviesRepo.getNowPlayingMovies();
    switch (response) {
      case Success(:final data):
        {
          // getNowPlayingMovieResponse = data;
          emit(MovieState.getNowPlayingMoviesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          MovieState.getNowPlayingMoviesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  Future<void> getFullMovieData({required int movieId}) async {
    emit(MovieState.getFullMovieDataLoading());
    final response = await moviesRepo.getFullMovieData(movieId: movieId);
    switch (response) {
      case Success(:final data):
        emit(MovieState.getFullMovieDataSuccess(data));
      case Failure(:final errorHandler):
        emit(
          MovieState.getFullMovieDataFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  resetMovieState() {
    emit(MovieState.initial());
  }
}
