// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvSeriesResponseModel _$TvSeriesResponseModelFromJson(
  Map<String, dynamic> json,
) => TvSeriesResponseModel(
  tvSeriesList:
      (json['results'] as List<dynamic>)
          .map((e) => TvSeriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$TvSeriesResponseModelToJson(
  TvSeriesResponseModel instance,
) => <String, dynamic>{'results': instance.tvSeriesList};

TvSeriesModel _$TvSeriesModelFromJson(Map<String, dynamic> json) =>
    TvSeriesModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$TvSeriesModelToJson(TvSeriesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
    };
