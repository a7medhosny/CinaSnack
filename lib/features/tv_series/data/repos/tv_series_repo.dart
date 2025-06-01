import 'package:movie_app/core/networking/api_error_handler.dart';
import 'package:movie_app/core/networking/api_result.dart';
import 'package:movie_app/features/tv_series/data/apis/tv_series_api_service.dart';
import 'package:movie_app/features/movies/data/models/creadits_response_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_details_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/movies/data/models/videos_response.dart';

class TvSeriesRepo {
  final TvSeriesApiService tvSeriesApiService;

  TvSeriesRepo({required this.tvSeriesApiService});
  Future<ApiResult<TvSeriesResponseModel>> getPopularTvSeries() async {
    try {
      final response = await tvSeriesApiService.getPopularTvSeries('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TvSeriesResponseModel>> getTopRatedTvSeries() async {
    try {
      final response = await tvSeriesApiService.getTopRatedTvSeries('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TvSeriesResponseModel>> getAiringTodayTvSeries() async {
    try {
      final response = await tvSeriesApiService.getAiringTodayTvSeries('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TvSeriesResponseModel>> getOnTheAirTvSeries() async {
    try {
      final response = await tvSeriesApiService.getOnTheAirTvSeries('en', 1);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  /*  @GET("${TvSeriesApiConstants.tvSeriesDetails}/{series_id}")
  Future<TvSeriesDetailsModel> getTvSeriesDetails(
    @Path("series_id") int movieId,
    @Query("language") String language,
  );
 */
  Future<ApiResult<Map<String, dynamic>>> getFullTvSeriesDataLoading({
    required int seriesId,
  }) async {
    try {
      final tvSeriesDetails = await tvSeriesApiService.getTvSeriesDetails(
        seriesId,
        'en',
      );

      final creditsResponse = await tvSeriesApiService.getTvSeriesCredits(
        seriesId,
        'en',
      );

      final recommendationsTvSeries = await tvSeriesApiService
          .getTvSeriesRecommendations(seriesId, 'en', 1);

      final videosResponse = await tvSeriesApiService.getTvSeriesVideos(
        seriesId,
        'en',
      );
      final youtubeTrailers =
          (videosResponse.results??[])
              .where(
                (video) =>
                    (video.site??'').toLowerCase() == 'youtube' &&
                    (video.type??'').toLowerCase() == 'trailer',
              )
              .toList();

      return ApiResult.success({
        'tvSeriesDetails': tvSeriesDetails,
        'creditsResponse': creditsResponse,
        'recommendationsTvSeries': recommendationsTvSeries,
        'tvTrailer': youtubeTrailers,
      });
    } catch (error, stack) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TvSeriesDetailsModel>> getTvSeriesDetails({
    required int seriesId,
  }) async {
    try {
      final response = await tvSeriesApiService.getTvSeriesDetails(
        seriesId,
        'en',
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<CreditsResponseModel>> getTvSeriesCredits({
    required int seriesId,
  }) async {
    try {
      final response = await tvSeriesApiService.getTvSeriesCredits(
        seriesId,
        'en',
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<VideosResponse>> getTvSeriesVideos({
    required int seriesId,
  }) async {
    try {
      final response = await tvSeriesApiService.getTvSeriesVideos(
        seriesId,
        'en',
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TvSeriesResponseModel>> getTvSeriesRecommendations({
    required int seriesId,
  }) async {
    try {
      final response = await tvSeriesApiService.getTvSeriesRecommendations(
        seriesId,
        'en',
        1,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
