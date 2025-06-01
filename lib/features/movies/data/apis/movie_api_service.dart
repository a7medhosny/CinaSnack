import 'package:dio/dio.dart';
import 'package:movie_app/features/movies/data/apis/movie_api_constants.dart';
import 'package:movie_app/features/movies/data/models/creadits_response_model.dart';
import 'package:movie_app/features/movies/data/models/movie_detail_model.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/data/models/videos_response.dart';
import 'package:retrofit/http.dart';

part 'movie_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class MovieApiService {
  factory MovieApiService(Dio dio, {String? baseUrl}) = _MovieApiService;

  @GET(ApiConstants.popularMovies)
  Future<MovieResponseModel> getPopularMovies(
    @Query("language") String language,
    @Query("page") int page,
  );

  @GET(ApiConstants.topRatedMovies)
  Future<MovieResponseModel> getTopRatedMovies(
    @Query("language") String language,
    @Query("page") int page,
  );

  @GET(ApiConstants.upcomingMovies)
  Future<MovieResponseModel> getUpcomingMovies(
    @Query("language") String language,
    @Query("page") int page,
  );

  @GET(ApiConstants.nowPlayingMovies)
  Future<MovieResponseModel> getNowPlayingMovies(
    @Query("language") String language,
    @Query("page") int page,
  );

  @GET("${ApiConstants.movieDetails}/{movie_id}")
  Future<MovieDetailsModel> getMovieDetails(
    @Path("movie_id") int movieId,
    @Query("language") String language,
  );

  @GET("movie/{movie_id}/credits")
  Future<CreditsResponseModel> getMovieCredits(
    @Path("movie_id") int movieId,
    @Query("language") String language,
  );

  @GET("movie/{movie_id}/videos")
  Future<VideosResponse> getMovieVideos(
    @Path("movie_id") int movieId,
    @Query("language") String language,
  );

  @GET("movie/{movie_id}/recommendations")
  Future<MovieResponseModel> getMovieRecommendations(
    @Path("movie_id") int movieId,
    @Query("language") String language,
  );
}
