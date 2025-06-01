import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/networking/api_error_handler.dart';
import 'package:movie_app/core/networking/api_result.dart';
import 'package:movie_app/features/search/data/models/search_final_result.dart';
import 'package:movie_app/features/search/data/repos/search_repo.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;
  List<SearchFinalResult> searchFinalResult = [];
  SearchCubit(this.searchRepo) : super(SearchState.initial());

  Future<void> search({required String query}) async {
    final response = await searchRepo.search(query: query);
    switch (response) {
      case Success(:final data):
        {
          searchFinalResult = data;
          emit(SearchState.searchSucess(data));
        }
      case Failure(:final errorHandler):
        emit(
          SearchState.searchFailure(
            ErrorHandler.handle(errorHandler).apiErrorModel.message ??
                'unknown error',
          ),
        );
    }
  }
}
