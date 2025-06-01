// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMovieResponseModel _$SearchMovieResponseModelFromJson(
  Map<String, dynamic> json,
) => SearchMovieResponseModel(
  results:
      (json['results'] as List<dynamic>)
          .map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SearchMovieResponseModelToJson(
  SearchMovieResponseModel instance,
) => <String, dynamic>{'results': instance.results};

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) => MovieResult(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  releaseDate: json['release_date'] as String,
);

Map<String, dynamic> _$MovieResultToJson(MovieResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'release_date': instance.releaseDate,
    };
