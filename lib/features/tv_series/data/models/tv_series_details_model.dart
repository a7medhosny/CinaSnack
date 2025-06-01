import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_details_model.g.dart';

@JsonSerializable()
class TvSeriesDetailsModel {
  final int id;

  @JsonKey(name: 'original_name')
  final String? originalName;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  final List<Genre> genres;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @JsonKey(name: "episode_run_time")
  final List<int>? episodeRunTime;

  @JsonKey(name: "number_of_episodes")
  final int numberOfEpisodes;

  @JsonKey(name: "number_of_seasons")
  final int numberOfSeasons;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  final String? tagline;
  final String? overview;

  TvSeriesDetailsModel({
    required this.id,
    required this.originalName,
    required this.releaseDate,
    required this.genres,
    required this.voteAverage,
    required this.episodeRunTime,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.backdropPath,
    required this.overview,
    required this.tagline,
  });

  factory TvSeriesDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TvSeriesDetailsModelToJson(this);
}

@JsonSerializable()
class Genre {
  final int id;
  final String name;

  Genre({required this.id, required this.name});

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
