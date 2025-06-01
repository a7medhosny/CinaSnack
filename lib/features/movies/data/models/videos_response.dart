import 'package:json_annotation/json_annotation.dart';

part 'videos_response.g.dart';

@JsonSerializable()
class VideosResponse {
  final int id;
  final List<VideoModel>? results;

  VideosResponse({
    required this.id,
    this.results,
  });

  factory VideosResponse.fromJson(Map<String, dynamic> json) =>
      _$VideosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VideosResponseToJson(this);
}


@JsonSerializable()
class VideoModel {
  final String? id;
  final String? key;
  final String? site;
  final String? type;
  final bool? official;

  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;

  VideoModel({
    this.id,
    this.key,
    this.site,
    this.type,
    this.official,
    this.publishedAt,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}
