import 'package:movie_app/core/networking/api_error_handler.dart';
import 'package:movie_app/core/networking/api_result.dart';
import 'package:movie_app/features/search/data/apis/search_api_service.dart';
import 'package:movie_app/features/search/data/models/search_final_result.dart';

class SearchRepo {
  final SearchApiService searchApiService;

  SearchRepo({required this.searchApiService});

  Future<ApiResult<List<SearchFinalResult>>> search({
    required String query,
  }) async {
    try {
      final movieResponse = await searchApiService.searchMovies(query, 'en', 1);
      final tvResponse = await searchApiService.searchTvs(query, 'en', 1);
      List<SearchFinalResult> searchFinalResult = [];

      SearchFinalResult mapMovieToFinalResult(movie) => SearchFinalResult(
        id: movie.id,
        title: movie.title,
        date: movie.releaseDate,
        type: "movie",
      );

      SearchFinalResult mapTvToFinalResult(tv) => SearchFinalResult(
        id: tv.id,
        title: tv.name ?? '',
        date: tv.releaseDate ?? '',
        type: "tv",
      );

      searchFinalResult.addAll(
        movieResponse.results.map(mapMovieToFinalResult),
      );

      searchFinalResult.addAll(tvResponse.results.map(mapTvToFinalResult));

      return ApiResult.success(searchFinalResult);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
