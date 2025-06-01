import 'package:dio/dio.dart';
import 'package:movie_app/features/search/data/apis/search_api_constants.dart';
import 'package:movie_app/features/search/data/models/search_movie_response_model.dart';
import 'package:movie_app/features/search/data/models/search_tv_response_model.dart';
import 'package:retrofit/http.dart';

part 'search_api_service.g.dart';
@RestApi(baseUrl: SearchApiConstants.apiBaseUrl)
abstract class SearchApiService {
factory SearchApiService(Dio dio, {String? baseUrl}) = _SearchApiService;

  @GET(SearchApiConstants.searchMovies)
  Future<SearchMovieResponseModel> searchMovies(
    @Query("query") String query,
    @Query("language") String language,
    @Query("page") int page,
  );
  @GET(SearchApiConstants.searchTv)
  Future<SearchTvResponseModel> searchTvs(
    @Query("query") String query,
    @Query("language") String language,
    @Query("page") int page,
  );
}


