import 'package:json_annotation/json_annotation.dart';
part 'tv_series_response_model.g.dart';

@JsonSerializable()
class TvSeriesResponseModel {
  @JsonKey(name: 'results')
  final List<TvSeriesModel> tvSeriesList;

  TvSeriesResponseModel({required this.tvSeriesList});
  factory TvSeriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesResponseModelFromJson(json);
}

@JsonSerializable()
class TvSeriesModel {
  final int id;
  final String name;
  @JsonKey(name: "poster_path")
  final String? posterPath;

  TvSeriesModel({required this.id, required this.name, this.posterPath});

  factory TvSeriesModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesModelFromJson(json);
}
