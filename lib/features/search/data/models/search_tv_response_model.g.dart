// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_tv_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTvResponseModel _$SearchTvResponseModelFromJson(
  Map<String, dynamic> json,
) => SearchTvResponseModel(
  results:
      (json['results'] as List<dynamic>)
          .map((e) => TvResult.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SearchTvResponseModelToJson(
  SearchTvResponseModel instance,
) => <String, dynamic>{'results': instance.results};

TvResult _$TvResultFromJson(Map<String, dynamic> json) => TvResult(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  releaseDate: json['release_date'] as String?,
);

Map<String, dynamic> _$TvResultToJson(TvResult instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'release_date': instance.releaseDate,
};
