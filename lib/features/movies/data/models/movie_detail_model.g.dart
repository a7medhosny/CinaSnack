// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) =>
    MovieDetailsModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      releaseDate: json['release_date'] as String?,
      genres:
          (json['genres'] as List<dynamic>)
              .map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList(),
      voteAverage: (json['vote_average'] as num).toDouble(),
      runtime: (json['runtime'] as num?)?.toInt(),
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      overview: json['overview'] as String?,
      tagline: json['tagline'] as String?,
      homepage: json['homepage'] as String?,
    );

Map<String, dynamic> _$MovieDetailsModelToJson(MovieDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'release_date': instance.releaseDate,
      'genres': instance.genres,
      'vote_average': instance.voteAverage,
      'runtime': instance.runtime,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'overview': instance.overview,
      'tagline': instance.tagline,
      'homepage': instance.homepage,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) =>
    Genre(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
