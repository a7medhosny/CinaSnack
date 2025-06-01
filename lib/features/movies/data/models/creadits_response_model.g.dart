// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creadits_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditsResponseModel _$CreditsResponseModelFromJson(
  Map<String, dynamic> json,
) => CreditsResponseModel(
  id: (json['id'] as num).toInt(),
  cast:
      (json['cast'] as List<dynamic>)
          .map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CreditsResponseModelToJson(
  CreditsResponseModel instance,
) => <String, dynamic>{'id': instance.id, 'cast': instance.cast};

Cast _$CastFromJson(Map<String, dynamic> json) => Cast(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  profilePath: json['profile_path'] as String?,
  character: json['character'] as String?,
);

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'profile_path': instance.profilePath,
  'character': instance.character,
};

Crew _$CrewFromJson(Map<String, dynamic> json) => Crew(
  id: (json['id'] as num).toInt(),
  knownForDepartment: json['known_for_department'] as String,
  name: json['name'] as String,
  profilePath: json['profile_path'] as String?,
  creditId: json['credit_id'] as String,
  department: json['department'] as String,
  job: json['job'] as String,
);

Map<String, dynamic> _$CrewToJson(Crew instance) => <String, dynamic>{
  'id': instance.id,
  'known_for_department': instance.knownForDepartment,
  'name': instance.name,
  'profile_path': instance.profilePath,
  'credit_id': instance.creditId,
  'department': instance.department,
  'job': instance.job,
};
