// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState()';
}


}

/// @nodoc
class $TvSeriesStateCopyWith<$Res>  {
$TvSeriesStateCopyWith(TvSeriesState _, $Res Function(TvSeriesState) __);
}


/// @nodoc


class _Initial implements TvSeriesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState.initial()';
}


}




/// @nodoc


class getPopularTvSeriesLoading implements TvSeriesState {
  const getPopularTvSeriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getPopularTvSeriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState.getPopularTvSeriesLoading()';
}


}




/// @nodoc


class getPopularTvSeriesSuccess implements TvSeriesState {
  const getPopularTvSeriesSuccess(this.tvSeriesResponseModel);
  

 final  TvSeriesResponseModel tvSeriesResponseModel;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getPopularTvSeriesSuccessCopyWith<getPopularTvSeriesSuccess> get copyWith => _$getPopularTvSeriesSuccessCopyWithImpl<getPopularTvSeriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getPopularTvSeriesSuccess&&(identical(other.tvSeriesResponseModel, tvSeriesResponseModel) || other.tvSeriesResponseModel == tvSeriesResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,tvSeriesResponseModel);

@override
String toString() {
  return 'TvSeriesState.getPopularTvSeriesSuccess(tvSeriesResponseModel: $tvSeriesResponseModel)';
}


}

/// @nodoc
abstract mixin class $getPopularTvSeriesSuccessCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getPopularTvSeriesSuccessCopyWith(getPopularTvSeriesSuccess value, $Res Function(getPopularTvSeriesSuccess) _then) = _$getPopularTvSeriesSuccessCopyWithImpl;
@useResult
$Res call({
 TvSeriesResponseModel tvSeriesResponseModel
});




}
/// @nodoc
class _$getPopularTvSeriesSuccessCopyWithImpl<$Res>
    implements $getPopularTvSeriesSuccessCopyWith<$Res> {
  _$getPopularTvSeriesSuccessCopyWithImpl(this._self, this._then);

  final getPopularTvSeriesSuccess _self;
  final $Res Function(getPopularTvSeriesSuccess) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tvSeriesResponseModel = null,}) {
  return _then(getPopularTvSeriesSuccess(
null == tvSeriesResponseModel ? _self.tvSeriesResponseModel : tvSeriesResponseModel // ignore: cast_nullable_to_non_nullable
as TvSeriesResponseModel,
  ));
}


}

/// @nodoc


class getPopularTvSeriesFailure implements TvSeriesState {
  const getPopularTvSeriesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getPopularTvSeriesFailureCopyWith<getPopularTvSeriesFailure> get copyWith => _$getPopularTvSeriesFailureCopyWithImpl<getPopularTvSeriesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getPopularTvSeriesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'TvSeriesState.getPopularTvSeriesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getPopularTvSeriesFailureCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getPopularTvSeriesFailureCopyWith(getPopularTvSeriesFailure value, $Res Function(getPopularTvSeriesFailure) _then) = _$getPopularTvSeriesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getPopularTvSeriesFailureCopyWithImpl<$Res>
    implements $getPopularTvSeriesFailureCopyWith<$Res> {
  _$getPopularTvSeriesFailureCopyWithImpl(this._self, this._then);

  final getPopularTvSeriesFailure _self;
  final $Res Function(getPopularTvSeriesFailure) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getPopularTvSeriesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getAiringTodayTvSeriesLoading implements TvSeriesState {
  const getAiringTodayTvSeriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getAiringTodayTvSeriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState.getAiringTodayTvSeriesLoading()';
}


}




/// @nodoc


class getAiringTodayTvSeriesSuccess implements TvSeriesState {
  const getAiringTodayTvSeriesSuccess(this.tvSeriesResponseModel);
  

 final  TvSeriesResponseModel tvSeriesResponseModel;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getAiringTodayTvSeriesSuccessCopyWith<getAiringTodayTvSeriesSuccess> get copyWith => _$getAiringTodayTvSeriesSuccessCopyWithImpl<getAiringTodayTvSeriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getAiringTodayTvSeriesSuccess&&(identical(other.tvSeriesResponseModel, tvSeriesResponseModel) || other.tvSeriesResponseModel == tvSeriesResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,tvSeriesResponseModel);

@override
String toString() {
  return 'TvSeriesState.getAiringTodayTvSeriesSuccess(tvSeriesResponseModel: $tvSeriesResponseModel)';
}


}

/// @nodoc
abstract mixin class $getAiringTodayTvSeriesSuccessCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getAiringTodayTvSeriesSuccessCopyWith(getAiringTodayTvSeriesSuccess value, $Res Function(getAiringTodayTvSeriesSuccess) _then) = _$getAiringTodayTvSeriesSuccessCopyWithImpl;
@useResult
$Res call({
 TvSeriesResponseModel tvSeriesResponseModel
});




}
/// @nodoc
class _$getAiringTodayTvSeriesSuccessCopyWithImpl<$Res>
    implements $getAiringTodayTvSeriesSuccessCopyWith<$Res> {
  _$getAiringTodayTvSeriesSuccessCopyWithImpl(this._self, this._then);

  final getAiringTodayTvSeriesSuccess _self;
  final $Res Function(getAiringTodayTvSeriesSuccess) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tvSeriesResponseModel = null,}) {
  return _then(getAiringTodayTvSeriesSuccess(
null == tvSeriesResponseModel ? _self.tvSeriesResponseModel : tvSeriesResponseModel // ignore: cast_nullable_to_non_nullable
as TvSeriesResponseModel,
  ));
}


}

/// @nodoc


class getAiringTodayTvSeriesFailure implements TvSeriesState {
  const getAiringTodayTvSeriesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getAiringTodayTvSeriesFailureCopyWith<getAiringTodayTvSeriesFailure> get copyWith => _$getAiringTodayTvSeriesFailureCopyWithImpl<getAiringTodayTvSeriesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getAiringTodayTvSeriesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'TvSeriesState.getAiringTodayTvSeriesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getAiringTodayTvSeriesFailureCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getAiringTodayTvSeriesFailureCopyWith(getAiringTodayTvSeriesFailure value, $Res Function(getAiringTodayTvSeriesFailure) _then) = _$getAiringTodayTvSeriesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getAiringTodayTvSeriesFailureCopyWithImpl<$Res>
    implements $getAiringTodayTvSeriesFailureCopyWith<$Res> {
  _$getAiringTodayTvSeriesFailureCopyWithImpl(this._self, this._then);

  final getAiringTodayTvSeriesFailure _self;
  final $Res Function(getAiringTodayTvSeriesFailure) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getAiringTodayTvSeriesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getTopRatedTvSeriesLoading implements TvSeriesState {
  const getTopRatedTvSeriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getTopRatedTvSeriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState.getTopRatedTvSeriesLoading()';
}


}




/// @nodoc


class getTopRatedTvSeriesSuccess implements TvSeriesState {
  const getTopRatedTvSeriesSuccess(this.tvSeriesResponseModel);
  

 final  TvSeriesResponseModel tvSeriesResponseModel;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getTopRatedTvSeriesSuccessCopyWith<getTopRatedTvSeriesSuccess> get copyWith => _$getTopRatedTvSeriesSuccessCopyWithImpl<getTopRatedTvSeriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getTopRatedTvSeriesSuccess&&(identical(other.tvSeriesResponseModel, tvSeriesResponseModel) || other.tvSeriesResponseModel == tvSeriesResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,tvSeriesResponseModel);

@override
String toString() {
  return 'TvSeriesState.getTopRatedTvSeriesSuccess(tvSeriesResponseModel: $tvSeriesResponseModel)';
}


}

/// @nodoc
abstract mixin class $getTopRatedTvSeriesSuccessCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getTopRatedTvSeriesSuccessCopyWith(getTopRatedTvSeriesSuccess value, $Res Function(getTopRatedTvSeriesSuccess) _then) = _$getTopRatedTvSeriesSuccessCopyWithImpl;
@useResult
$Res call({
 TvSeriesResponseModel tvSeriesResponseModel
});




}
/// @nodoc
class _$getTopRatedTvSeriesSuccessCopyWithImpl<$Res>
    implements $getTopRatedTvSeriesSuccessCopyWith<$Res> {
  _$getTopRatedTvSeriesSuccessCopyWithImpl(this._self, this._then);

  final getTopRatedTvSeriesSuccess _self;
  final $Res Function(getTopRatedTvSeriesSuccess) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tvSeriesResponseModel = null,}) {
  return _then(getTopRatedTvSeriesSuccess(
null == tvSeriesResponseModel ? _self.tvSeriesResponseModel : tvSeriesResponseModel // ignore: cast_nullable_to_non_nullable
as TvSeriesResponseModel,
  ));
}


}

/// @nodoc


class getTopRatedTvSeriesFailure implements TvSeriesState {
  const getTopRatedTvSeriesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getTopRatedTvSeriesFailureCopyWith<getTopRatedTvSeriesFailure> get copyWith => _$getTopRatedTvSeriesFailureCopyWithImpl<getTopRatedTvSeriesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getTopRatedTvSeriesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'TvSeriesState.getTopRatedTvSeriesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getTopRatedTvSeriesFailureCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getTopRatedTvSeriesFailureCopyWith(getTopRatedTvSeriesFailure value, $Res Function(getTopRatedTvSeriesFailure) _then) = _$getTopRatedTvSeriesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getTopRatedTvSeriesFailureCopyWithImpl<$Res>
    implements $getTopRatedTvSeriesFailureCopyWith<$Res> {
  _$getTopRatedTvSeriesFailureCopyWithImpl(this._self, this._then);

  final getTopRatedTvSeriesFailure _self;
  final $Res Function(getTopRatedTvSeriesFailure) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getTopRatedTvSeriesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getOnTheAirTvSeriesLoading implements TvSeriesState {
  const getOnTheAirTvSeriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getOnTheAirTvSeriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState.getOnTheAirTvSeriesLoading()';
}


}




/// @nodoc


class getOnTheAirTvSeriesSuccess implements TvSeriesState {
  const getOnTheAirTvSeriesSuccess(this.tvSeriesResponseModel);
  

 final  TvSeriesResponseModel tvSeriesResponseModel;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getOnTheAirTvSeriesSuccessCopyWith<getOnTheAirTvSeriesSuccess> get copyWith => _$getOnTheAirTvSeriesSuccessCopyWithImpl<getOnTheAirTvSeriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getOnTheAirTvSeriesSuccess&&(identical(other.tvSeriesResponseModel, tvSeriesResponseModel) || other.tvSeriesResponseModel == tvSeriesResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,tvSeriesResponseModel);

@override
String toString() {
  return 'TvSeriesState.getOnTheAirTvSeriesSuccess(tvSeriesResponseModel: $tvSeriesResponseModel)';
}


}

/// @nodoc
abstract mixin class $getOnTheAirTvSeriesSuccessCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getOnTheAirTvSeriesSuccessCopyWith(getOnTheAirTvSeriesSuccess value, $Res Function(getOnTheAirTvSeriesSuccess) _then) = _$getOnTheAirTvSeriesSuccessCopyWithImpl;
@useResult
$Res call({
 TvSeriesResponseModel tvSeriesResponseModel
});




}
/// @nodoc
class _$getOnTheAirTvSeriesSuccessCopyWithImpl<$Res>
    implements $getOnTheAirTvSeriesSuccessCopyWith<$Res> {
  _$getOnTheAirTvSeriesSuccessCopyWithImpl(this._self, this._then);

  final getOnTheAirTvSeriesSuccess _self;
  final $Res Function(getOnTheAirTvSeriesSuccess) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tvSeriesResponseModel = null,}) {
  return _then(getOnTheAirTvSeriesSuccess(
null == tvSeriesResponseModel ? _self.tvSeriesResponseModel : tvSeriesResponseModel // ignore: cast_nullable_to_non_nullable
as TvSeriesResponseModel,
  ));
}


}

/// @nodoc


class getOnTheAirTvSeriesFailure implements TvSeriesState {
  const getOnTheAirTvSeriesFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getOnTheAirTvSeriesFailureCopyWith<getOnTheAirTvSeriesFailure> get copyWith => _$getOnTheAirTvSeriesFailureCopyWithImpl<getOnTheAirTvSeriesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getOnTheAirTvSeriesFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'TvSeriesState.getOnTheAirTvSeriesFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getOnTheAirTvSeriesFailureCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getOnTheAirTvSeriesFailureCopyWith(getOnTheAirTvSeriesFailure value, $Res Function(getOnTheAirTvSeriesFailure) _then) = _$getOnTheAirTvSeriesFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getOnTheAirTvSeriesFailureCopyWithImpl<$Res>
    implements $getOnTheAirTvSeriesFailureCopyWith<$Res> {
  _$getOnTheAirTvSeriesFailureCopyWithImpl(this._self, this._then);

  final getOnTheAirTvSeriesFailure _self;
  final $Res Function(getOnTheAirTvSeriesFailure) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getOnTheAirTvSeriesFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class getFullTvSeriesDataLoading implements TvSeriesState {
  const getFullTvSeriesDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getFullTvSeriesDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesState.getFullTvSeriesDataLoading()';
}


}




/// @nodoc


class getFullTvSeriesDataSuccess implements TvSeriesState {
  const getFullTvSeriesDataSuccess(final  Map<String, dynamic> fullTvSeriesData): _fullTvSeriesData = fullTvSeriesData;
  

 final  Map<String, dynamic> _fullTvSeriesData;
 Map<String, dynamic> get fullTvSeriesData {
  if (_fullTvSeriesData is EqualUnmodifiableMapView) return _fullTvSeriesData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fullTvSeriesData);
}


/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getFullTvSeriesDataSuccessCopyWith<getFullTvSeriesDataSuccess> get copyWith => _$getFullTvSeriesDataSuccessCopyWithImpl<getFullTvSeriesDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getFullTvSeriesDataSuccess&&const DeepCollectionEquality().equals(other._fullTvSeriesData, _fullTvSeriesData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fullTvSeriesData));

@override
String toString() {
  return 'TvSeriesState.getFullTvSeriesDataSuccess(fullTvSeriesData: $fullTvSeriesData)';
}


}

/// @nodoc
abstract mixin class $getFullTvSeriesDataSuccessCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getFullTvSeriesDataSuccessCopyWith(getFullTvSeriesDataSuccess value, $Res Function(getFullTvSeriesDataSuccess) _then) = _$getFullTvSeriesDataSuccessCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> fullTvSeriesData
});




}
/// @nodoc
class _$getFullTvSeriesDataSuccessCopyWithImpl<$Res>
    implements $getFullTvSeriesDataSuccessCopyWith<$Res> {
  _$getFullTvSeriesDataSuccessCopyWithImpl(this._self, this._then);

  final getFullTvSeriesDataSuccess _self;
  final $Res Function(getFullTvSeriesDataSuccess) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullTvSeriesData = null,}) {
  return _then(getFullTvSeriesDataSuccess(
null == fullTvSeriesData ? _self._fullTvSeriesData : fullTvSeriesData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class getFullTvSeriesDataFailure implements TvSeriesState {
  const getFullTvSeriesDataFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$getFullTvSeriesDataFailureCopyWith<getFullTvSeriesDataFailure> get copyWith => _$getFullTvSeriesDataFailureCopyWithImpl<getFullTvSeriesDataFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is getFullTvSeriesDataFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'TvSeriesState.getFullTvSeriesDataFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $getFullTvSeriesDataFailureCopyWith<$Res> implements $TvSeriesStateCopyWith<$Res> {
  factory $getFullTvSeriesDataFailureCopyWith(getFullTvSeriesDataFailure value, $Res Function(getFullTvSeriesDataFailure) _then) = _$getFullTvSeriesDataFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$getFullTvSeriesDataFailureCopyWithImpl<$Res>
    implements $getFullTvSeriesDataFailureCopyWith<$Res> {
  _$getFullTvSeriesDataFailureCopyWithImpl(this._self, this._then);

  final getFullTvSeriesDataFailure _self;
  final $Res Function(getFullTvSeriesDataFailure) _then;

/// Create a copy of TvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(getFullTvSeriesDataFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
