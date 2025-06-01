import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_model.g.dart';
@JsonSerializable()
class MovieDetailsModel {
  final int id;
  final String title;

  @JsonKey(name: 'release_date')
  final String? releaseDate;

  final List<Genre> genres;

  @JsonKey(name: 'vote_average')
  final double voteAverage;

  final int? runtime;

  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  final String? overview;

  final String? tagline;

  final String? homepage;

  MovieDetailsModel({
    required this.id,
    required this.title,
    this.releaseDate,
    required this.genres,
    required this.voteAverage,
    this.runtime,
    this.posterPath,
    this.backdropPath,
    this.overview,
    this.tagline,
    this.homepage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsModelToJson(this);
}


@JsonSerializable()
class Genre {
  final int id;
  final String name;

  Genre({required this.id, required this.name});

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}
