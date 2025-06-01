import 'package:json_annotation/json_annotation.dart';
    part 'search_tv_response_model.g.dart';

    @JsonSerializable()
    class SearchTvResponseModel{

        final List<TvResult> results;

  SearchTvResponseModel({required this.results});
   factory SearchTvResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchTvResponseModelFromJson(json);

    }
    @JsonSerializable()
class TvResult {
  final int id;
  final String? name;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  TvResult({
    required this.id,
    required this.name,
    required this.releaseDate,
  });

  factory TvResult.fromJson(Map<String, dynamic> json) =>
      _$TvResultFromJson(json);

        Map<String, dynamic> toJson() => _$TvResultToJson(this);

}


