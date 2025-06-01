// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// @nodoc


class _Initial implements SearchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.initial()';
}


}




/// @nodoc


class searchSucess implements SearchState {
  const searchSucess(final  List<SearchFinalResult> searchFinalResult): _searchFinalResult = searchFinalResult;
  

 final  List<SearchFinalResult> _searchFinalResult;
 List<SearchFinalResult> get searchFinalResult {
  if (_searchFinalResult is EqualUnmodifiableListView) return _searchFinalResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchFinalResult);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$searchSucessCopyWith<searchSucess> get copyWith => _$searchSucessCopyWithImpl<searchSucess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is searchSucess&&const DeepCollectionEquality().equals(other._searchFinalResult, _searchFinalResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchFinalResult));

@override
String toString() {
  return 'SearchState.searchSucess(searchFinalResult: $searchFinalResult)';
}


}

/// @nodoc
abstract mixin class $searchSucessCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $searchSucessCopyWith(searchSucess value, $Res Function(searchSucess) _then) = _$searchSucessCopyWithImpl;
@useResult
$Res call({
 List<SearchFinalResult> searchFinalResult
});




}
/// @nodoc
class _$searchSucessCopyWithImpl<$Res>
    implements $searchSucessCopyWith<$Res> {
  _$searchSucessCopyWithImpl(this._self, this._then);

  final searchSucess _self;
  final $Res Function(searchSucess) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchFinalResult = null,}) {
  return _then(searchSucess(
null == searchFinalResult ? _self._searchFinalResult : searchFinalResult // ignore: cast_nullable_to_non_nullable
as List<SearchFinalResult>,
  ));
}


}

/// @nodoc


class searchFailure implements SearchState {
  const searchFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$searchFailureCopyWith<searchFailure> get copyWith => _$searchFailureCopyWithImpl<searchFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is searchFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'SearchState.searchFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $searchFailureCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $searchFailureCopyWith(searchFailure value, $Res Function(searchFailure) _then) = _$searchFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$searchFailureCopyWithImpl<$Res>
    implements $searchFailureCopyWith<$Res> {
  _$searchFailureCopyWithImpl(this._self, this._then);

  final searchFailure _self;
  final $Res Function(searchFailure) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(searchFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
