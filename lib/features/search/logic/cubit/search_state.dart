part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.searchSucess(
     List<SearchFinalResult> searchFinalResult
  ) = searchSucess;
  const factory SearchState.searchFailure(String errorMessage) = searchFailure;


 

  
}

