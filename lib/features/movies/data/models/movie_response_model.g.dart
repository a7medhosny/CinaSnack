// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResponseModel _$MovieResponseModelFromJson(Map<String, dynamic> json) =>
    MovieResponseModel(
      moviesList:
          (json['results'] as List<dynamic>)
              .map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$MovieResponseModelToJson(MovieResponseModel instance) =>
    <String, dynamic>{'results': instance.moviesList};

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  overview: json['overview'] as String,
  releaseDate: json['release_date'] as String,
);

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'poster_path': instance.posterPath,
  'backdrop_path': instance.backdropPath,
  'overview': instance.overview,
  'release_date': instance.releaseDate,
};
