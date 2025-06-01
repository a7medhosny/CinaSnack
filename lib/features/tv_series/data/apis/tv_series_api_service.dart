import 'package:dio/dio.dart';
import 'package:movie_app/features/tv_series/data/apis/tv_series_api_constants.dart';
import 'package:movie_app/features/movies/data/models/creadits_response_model.dart';
import 'package:movie_app/features/movies/data/models/videos_response.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_details_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:retrofit/http.dart';

part 'tv_series_api_service.g.dart';

@RestApi(baseUrl: TvSeriesApiConstants.apiBaseUrl)
abstract class TvSeriesApiService {
  factory TvSeriesApiService(Dio dio, {String? baseUrl}) = _TvSeriesApiService;

  @GET(TvSeriesApiConstants.popularTvSeries)
  Future<TvSeriesResponseModel> getPopularTvSeries(
    @Query("language") String language,
    @Query("page") int page,
  );

  @GET(TvSeriesApiConstants.topRatedTvSeries)
  Future<TvSeriesResponseModel> getTopRatedTvSeries(
    @Query("language") String language,
    @Query("page") int page,
  );


  @GET(TvSeriesApiConstants.airingTodayTvSeries)
  Future<TvSeriesResponseModel> getAiringTodayTvSeries(
    @Query("language") String language,
    @Query("page") int page,
  );


  @GET(TvSeriesApiConstants.onTheAirTvSeries)
  Future<TvSeriesResponseModel> getOnTheAirTvSeries(
    @Query("language") String language,
    @Query("page") int page,
  );

  
  @GET("${TvSeriesApiConstants.tvSeriesDetails}/{series_id}")
  Future<TvSeriesDetailsModel> getTvSeriesDetails(
    @Path("series_id") int seriesId,
    @Query("language") String language,
  );

  @GET("tv/{series_id}/credits")
  Future<CreditsResponseModel> getTvSeriesCredits(
    @Path("series_id") int seriesId,
    @Query("language") String language,
  );

  @GET("tv/{series_id}/videos")
  Future<VideosResponse> getTvSeriesVideos(
    @Path("series_id") int seriesId,
    @Query("language") String language,
  );

  @GET("tv/{series_id}/recommendations")
  Future<TvSeriesResponseModel> getTvSeriesRecommendations(
    @Path("series_id") int seriesId,
    @Query("language") String language,
    @Query("page") int page,  );
}
