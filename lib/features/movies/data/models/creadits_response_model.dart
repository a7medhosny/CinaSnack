import 'package:json_annotation/json_annotation.dart';
part 'creadits_response_model.g.dart';

@JsonSerializable()
class CreditsResponseModel {
  final int id;
  final List<Cast> cast;
  // final List<Crew> crew;

  CreditsResponseModel({
    required this.id,
    required this.cast,
    // required this.crew,
  });

  factory CreditsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreditsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreditsResponseModelToJson(this);
}

@JsonSerializable()
class Cast {
  final int id;
  final String name;
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  // @JsonKey(name: 'cast_id')
  // final int castId;
  final String? character;

  Cast({
    required this.id,
    required this.name,
    required this.profilePath,
    // required this.castId,
    required this.character,
  });

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

  Map<String, dynamic> toJson() => _$CastToJson(this);
}

@JsonSerializable()
class Crew {
  final int id;
  @JsonKey(name: 'known_for_department')
  final String knownForDepartment;
  final String name;
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @JsonKey(name: 'credit_id')
  final String creditId;
  final String department;
  final String job;

  Crew({
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.profilePath,
    required this.creditId,
    required this.department,
    required this.job,
  });

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);

  Map<String, dynamic> toJson() => _$CrewToJson(this);
}
