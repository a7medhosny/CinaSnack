import 'package:flutter/foundation.dart';
import 'package:movie_app/core/networking/api_error_handler.dart';
import 'package:movie_app/core/networking/api_result.dart';
import 'package:movie_app/features/movies/data/apis/movie_api_service.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';

class MoviesRepo {
  final MovieApiService apiService;

  MoviesRepo({required this.apiService});

  Future<ApiResult<MovieResponseModel>> getPopularMovies() async {
    try {
      final response = await apiService.getPopularMovies('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      // debugPrint('❌ getPopularMovies Error: $error');
      // debugPrint('🧠 Error type: ${error.runtimeType}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MovieResponseModel>> getTopRatedMovies() async {
    try {
      final response = await apiService.getTopRatedMovies('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      // debugPrint('❌ getTopRatedMovies Error: $error');
      // debugPrint('🧠 Error type: ${error.runtimeType}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MovieResponseModel>> getUpcomingMovies() async {
    try {
      final response = await apiService.getUpcomingMovies('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      // debugPrint('❌ getUpcomingMovies Error: $error');
      // debugPrint('🧠 Error type: ${error.runtimeType}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MovieResponseModel>> getNowPlayingMovies() async {
    try {
      final response = await apiService.getNowPlayingMovies('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      // debugPrint('❌ getNowPlayingMovies Error: $error');
      // debugPrint('🧠 Error type: ${error.runtimeType}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<Map<String, dynamic>>> getFullMovieData({
    required int movieId,
  }) async {
    try {
      final movieDetails = await apiService.getMovieDetails(movieId, 'en');
      final credits = await apiService.getMovieCredits(movieId, 'en');
      final recommendationsMovies = await apiService.getMovieRecommendations(
        movieId,
        'en',
      );
      final videosResponse = await apiService.getMovieVideos(movieId, 'en');
      final youtubeTrailers =
          (videosResponse.results ?? [])
              .where(
                (video) =>
                    (video.site?.toLowerCase() ?? '') == 'youtube' &&
                    (video.type?.toLowerCase() ?? '') == 'trailer',
              )
              .toList();

      return ApiResult.success({
        'movieDetails': movieDetails,
        'credits': credits,
        'recommendationsMovies': recommendationsMovies,
        'movieTrailer': youtubeTrailers.isNotEmpty ? youtubeTrailers[0] : null,
      });
    } catch (error, stackTrace) {
      // debugPrint('❌ getFullMovieData Error: $error');
      // debugPrint('🧠 Error type: ${error.runtimeType}');
      // debugPrint('📚 StackTrace: $stackTrace');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
