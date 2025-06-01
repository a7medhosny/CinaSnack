// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosResponse _$VideosResponseFromJson(Map<String, dynamic> json) =>
    VideosResponse(
      id: (json['id'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$VideosResponseToJson(VideosResponse instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => VideoModel(
  id: json['id'] as String?,
  key: json['key'] as String?,
  site: json['site'] as String?,
  type: json['type'] as String?,
  official: json['official'] as bool?,
  publishedAt:
      json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
);

Map<String, dynamic> _$VideoModelToJson(VideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'site': instance.site,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt?.toIso8601String(),
    };
