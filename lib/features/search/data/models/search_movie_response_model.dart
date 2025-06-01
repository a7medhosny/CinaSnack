import 'package:json_annotation/json_annotation.dart';
    part 'search_movie_response_model.g.dart';

@JsonSerializable()
class SearchMovieResponseModel {
  final List<MovieResult> results;


  SearchMovieResponseModel({
    required this.results,
  });

  factory SearchMovieResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchMovieResponseModelToJson(this);
}

@JsonSerializable()
class MovieResult {
  final int id;
  final String title;
  @JsonKey(name: "release_date")
  final String releaseDate;
  MovieResult({
    required this.id,
    required this.title,
    required this.releaseDate,
  });
  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);

        Map<String, dynamic> toJson() => _$MovieResultToJson(this);


}
