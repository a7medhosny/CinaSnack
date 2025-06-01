// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState()';
}


}

/// @nodoc
class $MovieStateCopyWith<$Res>  {
$MovieStateCopyWith(MovieState _, $Res Function(MovieState) __);
}


/// @nodoc


class _Initial implements MovieState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState.initial()';
}


}




/// @nodoc


class getPopularMoviesLoading implements MovieState {
  const getPopularMoviesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getPopularMoviesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState.getPopularMoviesLoading()';
}


}




/// @nodoc


class getPopularMoviesSuccess implements MovieState {
  const getPopularMoviesSuccess(this.movieResponse);
  

 final  MovieResponseModel movieResponse;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getPopularMoviesSuccessCopyWith<getPopularMoviesSuccess> get copyWith => _$getPopularMoviesSuccessCopyWithImpl<getPopularMoviesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getPopularMoviesSuccess&&(identical(other.movieResponse, movieResponse) || other.movieResponse == movieResponse));
}


@override
int get hashCode => Object.hash(runtimeType,movieResponse);

@override
String toString() {
  return 'MovieState.getPopularMoviesSuccess(movieResponse: $movieResponse)';
}


}

/// @nodoc
abstract mixin class $getPopularMoviesSuccessCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getPopularMoviesSuccessCopyWith(getPopularMoviesSuccess value, $Res Function(getPopularMoviesSuccess) _then) = _$getPopularMoviesSuccessCopyWithImpl;
@useResult
$Res call({
 MovieResponseModel movieResponse
});




}
/// @nodoc
class _$getPopularMoviesSuccessCopyWithImpl<$Res>
    implements $getPopularMoviesSuccessCopyWith<$Res> {
  _$getPopularMoviesSuccessCopyWithImpl(this._self, this._then);

  final getPopularMoviesSuccess _self;
  final $Res Function(getPopularMoviesSuccess) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieResponse = null,}) {
  return _then(getPopularMoviesSuccess(
null == movieResponse ? _self.movieResponse : movieResponse // ignore: cast_nullable_to_non_nullable
as MovieResponseModel,
  ));
}


}

/// @nodoc


class getPopularMoviesFailure implements MovieState {
  const getPopularMoviesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getPopularMoviesFailureCopyWith<getPopularMoviesFailure> get copyWith => _$getPopularMoviesFailureCopyWithImpl<getPopularMoviesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getPopularMoviesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MovieState.getPopularMoviesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getPopularMoviesFailureCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getPopularMoviesFailureCopyWith(getPopularMoviesFailure value, $Res Function(getPopularMoviesFailure) _then) = _$getPopularMoviesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getPopularMoviesFailureCopyWithImpl<$Res>
    implements $getPopularMoviesFailureCopyWith<$Res> {
  _$getPopularMoviesFailureCopyWithImpl(this._self, this._then);

  final getPopularMoviesFailure _self;
  final $Res Function(getPopularMoviesFailure) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getPopularMoviesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getTopRatedMoviesLoading implements MovieState {
  const getTopRatedMoviesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getTopRatedMoviesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState.getTopRatedMoviesLoading()';
}


}




/// @nodoc


class getTopRatedMoviesSuccess implements MovieState {
  const getTopRatedMoviesSuccess(this.movieResponse);
  

 final  MovieResponseModel movieResponse;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getTopRatedMoviesSuccessCopyWith<getTopRatedMoviesSuccess> get copyWith => _$getTopRatedMoviesSuccessCopyWithImpl<getTopRatedMoviesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getTopRatedMoviesSuccess&&(identical(other.movieResponse, movieResponse) || other.movieResponse == movieResponse));
}


@override
int get hashCode => Object.hash(runtimeType,movieResponse);

@override
String toString() {
  return 'MovieState.getTopRatedMoviesSuccess(movieResponse: $movieResponse)';
}


}

/// @nodoc
abstract mixin class $getTopRatedMoviesSuccessCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getTopRatedMoviesSuccessCopyWith(getTopRatedMoviesSuccess value, $Res Function(getTopRatedMoviesSuccess) _then) = _$getTopRatedMoviesSuccessCopyWithImpl;
@useResult
$Res call({
 MovieResponseModel movieResponse
});




}
/// @nodoc
class _$getTopRatedMoviesSuccessCopyWithImpl<$Res>
    implements $getTopRatedMoviesSuccessCopyWith<$Res> {
  _$getTopRatedMoviesSuccessCopyWithImpl(this._self, this._then);

  final getTopRatedMoviesSuccess _self;
  final $Res Function(getTopRatedMoviesSuccess) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieResponse = null,}) {
  return _then(getTopRatedMoviesSuccess(
null == movieResponse ? _self.movieResponse : movieResponse // ignore: cast_nullable_to_non_nullable
as MovieResponseModel,
  ));
}


}

/// @nodoc


class getTopRatedMoviesFailure implements MovieState {
  const getTopRatedMoviesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getTopRatedMoviesFailureCopyWith<getTopRatedMoviesFailure> get copyWith => _$getTopRatedMoviesFailureCopyWithImpl<getTopRatedMoviesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getTopRatedMoviesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MovieState.getTopRatedMoviesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getTopRatedMoviesFailureCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getTopRatedMoviesFailureCopyWith(getTopRatedMoviesFailure value, $Res Function(getTopRatedMoviesFailure) _then) = _$getTopRatedMoviesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getTopRatedMoviesFailureCopyWithImpl<$Res>
    implements $getTopRatedMoviesFailureCopyWith<$Res> {
  _$getTopRatedMoviesFailureCopyWithImpl(this._self, this._then);

  final getTopRatedMoviesFailure _self;
  final $Res Function(getTopRatedMoviesFailure) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getTopRatedMoviesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getUpcomingMoviesLoading implements MovieState {
  const getUpcomingMoviesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getUpcomingMoviesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState.getUpcomingMoviesLoading()';
}


}




/// @nodoc


class getUpcomingMoviesSuccess implements MovieState {
  const getUpcomingMoviesSuccess(this.movieResponse);
  

 final  MovieResponseModel movieResponse;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getUpcomingMoviesSuccessCopyWith<getUpcomingMoviesSuccess> get copyWith => _$getUpcomingMoviesSuccessCopyWithImpl<getUpcomingMoviesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getUpcomingMoviesSuccess&&(identical(other.movieResponse, movieResponse) || other.movieResponse == movieResponse));
}


@override
int get hashCode => Object.hash(runtimeType,movieResponse);

@override
String toString() {
  return 'MovieState.getUpcomingMoviesSuccess(movieResponse: $movieResponse)';
}


}

/// @nodoc
abstract mixin class $getUpcomingMoviesSuccessCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getUpcomingMoviesSuccessCopyWith(getUpcomingMoviesSuccess value, $Res Function(getUpcomingMoviesSuccess) _then) = _$getUpcomingMoviesSuccessCopyWithImpl;
@useResult
$Res call({
 MovieResponseModel movieResponse
});




}
/// @nodoc
class _$getUpcomingMoviesSuccessCopyWithImpl<$Res>
    implements $getUpcomingMoviesSuccessCopyWith<$Res> {
  _$getUpcomingMoviesSuccessCopyWithImpl(this._self, this._then);

  final getUpcomingMoviesSuccess _self;
  final $Res Function(getUpcomingMoviesSuccess) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieResponse = null,}) {
  return _then(getUpcomingMoviesSuccess(
null == movieResponse ? _self.movieResponse : movieResponse // ignore: cast_nullable_to_non_nullable
as MovieResponseModel,
  ));
}


}

/// @nodoc


class getUpcomingMoviesFailure implements MovieState {
  const getUpcomingMoviesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getUpcomingMoviesFailureCopyWith<getUpcomingMoviesFailure> get copyWith => _$getUpcomingMoviesFailureCopyWithImpl<getUpcomingMoviesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getUpcomingMoviesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MovieState.getUpcomingMoviesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getUpcomingMoviesFailureCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getUpcomingMoviesFailureCopyWith(getUpcomingMoviesFailure value, $Res Function(getUpcomingMoviesFailure) _then) = _$getUpcomingMoviesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getUpcomingMoviesFailureCopyWithImpl<$Res>
    implements $getUpcomingMoviesFailureCopyWith<$Res> {
  _$getUpcomingMoviesFailureCopyWithImpl(this._self, this._then);

  final getUpcomingMoviesFailure _self;
  final $Res Function(getUpcomingMoviesFailure) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getUpcomingMoviesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getNowPlayingMoviesLoading implements MovieState {
  const getNowPlayingMoviesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getNowPlayingMoviesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState.getNowPlayingMoviesLoading()';
}


}




/// @nodoc


class getNowPlayingMoviesSuccess implements MovieState {
  const getNowPlayingMoviesSuccess(this.movieResponse);
  

 final  MovieResponseModel movieResponse;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getNowPlayingMoviesSuccessCopyWith<getNowPlayingMoviesSuccess> get copyWith => _$getNowPlayingMoviesSuccessCopyWithImpl<getNowPlayingMoviesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getNowPlayingMoviesSuccess&&(identical(other.movieResponse, movieResponse) || other.movieResponse == movieResponse));
}


@override
int get hashCode => Object.hash(runtimeType,movieResponse);

@override
String toString() {
  return 'MovieState.getNowPlayingMoviesSuccess(movieResponse: $movieResponse)';
}


}

/// @nodoc
abstract mixin class $getNowPlayingMoviesSuccessCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getNowPlayingMoviesSuccessCopyWith(getNowPlayingMoviesSuccess value, $Res Function(getNowPlayingMoviesSuccess) _then) = _$getNowPlayingMoviesSuccessCopyWithImpl;
@useResult
$Res call({
 MovieResponseModel movieResponse
});




}
/// @nodoc
class _$getNowPlayingMoviesSuccessCopyWithImpl<$Res>
    implements $getNowPlayingMoviesSuccessCopyWith<$Res> {
  _$getNowPlayingMoviesSuccessCopyWithImpl(this._self, this._then);

  final getNowPlayingMoviesSuccess _self;
  final $Res Function(getNowPlayingMoviesSuccess) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieResponse = null,}) {
  return _then(getNowPlayingMoviesSuccess(
null == movieResponse ? _self.movieResponse : movieResponse // ignore: cast_nullable_to_non_nullable
as MovieResponseModel,
  ));
}


}

/// @nodoc


class getNowPlayingMoviesFailure implements MovieState {
  const getNowPlayingMoviesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getNowPlayingMoviesFailureCopyWith<getNowPlayingMoviesFailure> get copyWith => _$getNowPlayingMoviesFailureCopyWithImpl<getNowPlayingMoviesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getNowPlayingMoviesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MovieState.getNowPlayingMoviesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getNowPlayingMoviesFailureCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getNowPlayingMoviesFailureCopyWith(getNowPlayingMoviesFailure value, $Res Function(getNowPlayingMoviesFailure) _then) = _$getNowPlayingMoviesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getNowPlayingMoviesFailureCopyWithImpl<$Res>
    implements $getNowPlayingMoviesFailureCopyWith<$Res> {
  _$getNowPlayingMoviesFailureCopyWithImpl(this._self, this._then);

  final getNowPlayingMoviesFailure _self;
  final $Res Function(getNowPlayingMoviesFailure) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getNowPlayingMoviesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getFullMovieDataLoading implements MovieState {
  const getFullMovieDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getFullMovieDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState.getFullMovieDataLoading()';
}


}




/// @nodoc


class getFullMovieDataSuccess implements MovieState {
  const getFullMovieDataSuccess(final  Map<String, dynamic> fullMovieData): _fullMovieData = fullMovieData;
  

 final  Map<String, dynamic> _fullMovieData;
 Map<String, dynamic> get fullMovieData {
  if (_fullMovieData is EqualUnmodifiableMapView) return _fullMovieData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fullMovieData);
}


/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getFullMovieDataSuccessCopyWith<getFullMovieDataSuccess> get copyWith => _$getFullMovieDataSuccessCopyWithImpl<getFullMovieDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getFullMovieDataSuccess&&const DeepCollectionEquality().equals(other._fullMovieData, _fullMovieData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fullMovieData));

@override
String toString() {
  return 'MovieState.getFullMovieDataSuccess(fullMovieData: $fullMovieData)';
}


}

/// @nodoc
abstract mixin class $getFullMovieDataSuccessCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getFullMovieDataSuccessCopyWith(getFullMovieDataSuccess value, $Res Function(getFullMovieDataSuccess) _then) = _$getFullMovieDataSuccessCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> fullMovieData
});




}
/// @nodoc
class _$getFullMovieDataSuccessCopyWithImpl<$Res>
    implements $getFullMovieDataSuccessCopyWith<$Res> {
  _$getFullMovieDataSuccessCopyWithImpl(this._self, this._then);

  final getFullMovieDataSuccess _self;
  final $Res Function(getFullMovieDataSuccess) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullMovieData = null,}) {
  return _then(getFullMovieDataSuccess(
null == fullMovieData ? _self._fullMovieData : fullMovieData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class getFullMovieDataFailure implements MovieState {
  const getFullMovieDataFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getFullMovieDataFailureCopyWith<getFullMovieDataFailure> get copyWith => _$getFullMovieDataFailureCopyWithImpl<getFullMovieDataFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getFullMovieDataFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'MovieState.getFullMovieDataFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getFullMovieDataFailureCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory $getFullMovieDataFailureCopyWith(getFullMovieDataFailure value, $Res Function(getFullMovieDataFailure) _then) = _$getFullMovieDataFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getFullMovieDataFailureCopyWithImpl<$Res>
    implements $getFullMovieDataFailureCopyWith<$Res> {
  _$getFullMovieDataFailureCopyWithImpl(this._self, this._then);

  final getFullMovieDataFailure _self;
  final $Res Function(getFullMovieDataFailure) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getFullMovieDataFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
