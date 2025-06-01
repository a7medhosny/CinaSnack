part of 'tv_series_cubit.dart';
@freezed
class TvSeriesState with _$TvSeriesState {
  const factory TvSeriesState.initial() = _Initial;

  const factory TvSeriesState.getPopularTvSeriesLoading() =
      getPopularTvSeriesLoading;
  const factory TvSeriesState.getPopularTvSeriesSuccess(
    TvSeriesResponseModel tvSeriesResponseModel,
  ) = getPopularTvSeriesSuccess;
  const factory TvSeriesState.getPopularTvSeriesFailure(String errorMessage) =
      getPopularTvSeriesFailure;


  const factory TvSeriesState.getAiringTodayTvSeriesLoading() =
      getAiringTodayTvSeriesLoading;
  const factory TvSeriesState.getAiringTodayTvSeriesSuccess(
    TvSeriesResponseModel tvSeriesResponseModel,
  ) = getAiringTodayTvSeriesSuccess;
  const factory TvSeriesState.getAiringTodayTvSeriesFailure(String errorMessage) =
      getAiringTodayTvSeriesFailure;


  const factory TvSeriesState.getTopRatedTvSeriesLoading() =
      getTopRatedTvSeriesLoading;
  const factory TvSeriesState.getTopRatedTvSeriesSuccess(
    TvSeriesResponseModel tvSeriesResponseModel,
  ) = getTopRatedTvSeriesSuccess;
  const factory TvSeriesState.getTopRatedTvSeriesFailure(String errorMessage) =
      getTopRatedTvSeriesFailure;


  const factory TvSeriesState.getOnTheAirTvSeriesLoading() =
      getOnTheAirTvSeriesLoading;
  const factory TvSeriesState.getOnTheAirTvSeriesSuccess(
    TvSeriesResponseModel tvSeriesResponseModel,
  ) = getOnTheAirTvSeriesSuccess;
  const factory TvSeriesState.getOnTheAirTvSeriesFailure(String errorMessage) =
      getOnTheAirTvSeriesFailure;


  const factory TvSeriesState.getFullTvSeriesDataLoading() =
      getFullTvSeriesDataLoading;
  const factory TvSeriesState.getFullTvSeriesDataSuccess(
    Map<String, dynamic> fullTvSeriesData,
  ) = getFullTvSeriesDataSuccess;
  const factory TvSeriesState.getFullTvSeriesDataFailure(String errorMessage) =
      getFullTvSeriesDataFailure;



}
