// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvSeriesDetailsModel _$TvSeriesDetailsModelFromJson(
  Map<String, dynamic> json,
) => TvSeriesDetailsModel(
  id: (json['id'] as num).toInt(),
  originalName: json['original_name'] as String?,
  releaseDate: json['release_date'] as String?,
  genres:
      (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
  voteAverage: (json['vote_average'] as num).toDouble(),
  episodeRunTime:
      (json['episode_run_time'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
  numberOfEpisodes: (json['number_of_episodes'] as num).toInt(),
  numberOfSeasons: (json['number_of_seasons'] as num).toInt(),
  backdropPath: json['backdrop_path'] as String?,
  overview: json['overview'] as String?,
  tagline: json['tagline'] as String?,
);

Map<String, dynamic> _$TvSeriesDetailsModelToJson(
  TvSeriesDetailsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'original_name': instance.originalName,
  'release_date': instance.releaseDate,
  'genres': instance.genres,
  'vote_average': instance.voteAverage,
  'episode_run_time': instance.episodeRunTime,
  'number_of_episodes': instance.numberOfEpisodes,
  'number_of_seasons': instance.numberOfSeasons,
  'backdrop_path': instance.backdropPath,
  'tagline': instance.tagline,
  'overview': instance.overview,
};

Genre _$GenreFromJson(Map<String, dynamic> json) =>
    Genre(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
