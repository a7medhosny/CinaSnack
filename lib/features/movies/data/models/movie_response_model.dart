import 'package:json_annotation/json_annotation.dart';
part 'movie_response_model.g.dart';

@JsonSerializable()
class MovieResponseModel {
  @JsonKey(name: 'results')
  final List<Movie> moviesList;

  MovieResponseModel({required this.moviesList});
  factory MovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseModelFromJson(json);
}

@JsonSerializable()
class Movie {
  final int id;
  final String title;
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @JsonKey(name: "overview")
  final String overview;
  @JsonKey(name: "release_date")
  final String releaseDate;

  Movie({
    required this.id,
    required this.title,
    this.posterPath,
    required this.backdropPath,
    required this.overview,
    required this.releaseDate,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
