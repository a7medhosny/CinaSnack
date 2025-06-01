import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/networking/api_error_handler.dart';
import 'package:movie_app/core/networking/api_result.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/tv_series/data/repos/tv_series_repo.dart';

part 'tv_series_cubit.freezed.dart';
part 'tv_series_state.dart';

class TvSeriesCubit extends Cubit<TvSeriesState> {
  TvSeriesRepo tvSeriesRepo;
  TvSeriesCubit({required this.tvSeriesRepo}) : super(TvSeriesState.initial());
  // TvSeriesResponseModel? getPopularTvSeriesResponseModel,
  //     getTopRatedTvSeriesResponseModel,
  //     getAiringTodayTvSeriesResponseModel,
  //     getOnTheAirTvSeriesResponseModel;

  Future<void> getPopularTvSeries() async {
    emit(TvSeriesState.getPopularTvSeriesLoading());
    final response = await tvSeriesRepo.getPopularTvSeries();
    switch (response) {
      case Success(:final data):
        {
          // getPopularTvSeriesResponseModel = data;
          emit(TvSeriesState.getPopularTvSeriesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          TvSeriesState.getPopularTvSeriesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  Future<void> getTopRatedTvSeries() async {
    emit(TvSeriesState.getTopRatedTvSeriesLoading());
    final response = await tvSeriesRepo.getTopRatedTvSeries();
    switch (response) {
      case Success(:final data):
        {
          // getTopRatedTvSeriesResponseModel = data;
          emit(TvSeriesState.getTopRatedTvSeriesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          TvSeriesState.getTopRatedTvSeriesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  Future<void> getAiringTodayTvSeries() async {
    emit(TvSeriesState.getAiringTodayTvSeriesLoading());
    final response = await tvSeriesRepo.getAiringTodayTvSeries();
    switch (response) {
      case Success(:final data):
        {
          // getAiringTodayTvSeriesResponseModel = data;
          emit(TvSeriesState.getAiringTodayTvSeriesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          TvSeriesState.getAiringTodayTvSeriesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  Future<void> getOnTheAirTvSeries() async {
    emit(TvSeriesState.getOnTheAirTvSeriesLoading());
    final response = await tvSeriesRepo.getOnTheAirTvSeries();
    switch (response) {
      case Success(:final data):
        {
          // getOnTheAirTvSeriesResponseModel = data;
          emit(TvSeriesState.getOnTheAirTvSeriesSuccess(data));
        }
      case Failure(:final errorHandler):
        emit(
          TvSeriesState.getOnTheAirTvSeriesFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  Future<void> getFullTvSeriesData({required int seriesId}) async {
    emit(TvSeriesState.getFullTvSeriesDataLoading());
    final response = await tvSeriesRepo.getFullTvSeriesDataLoading(
      seriesId: seriesId,
    );
    switch (response) {
      case Success(:final data):
        emit(TvSeriesState.getFullTvSeriesDataSuccess(data));
      case Failure(:final errorHandler):
        emit(
          TvSeriesState.getFullTvSeriesDataFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }

  Future<void> test({required int seriesId}) async {
    // await tvSeriesRepo.getTvSeriesDetails(seriesId: seriesId);
    //  await tvSeriesRepo.getTvSeriesCredits(seriesId: seriesId);
    //await tvSeriesRepo.getTvSeriesRecommendations(seriesId: seriesId);
    //await tvSeriesRepo.getTvSeriesVideos(seriesId: seriesId);
  }
}
