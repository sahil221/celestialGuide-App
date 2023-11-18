// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AstronomyDto _$$_AstronomyDtoFromJson(Map<String, dynamic> json) =>
    _$_AstronomyDto(
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      mediaType: json['media_type'] as String,
      thumbnailUrl: json['thumbnail_url'] as String?,
    );

Map<String, dynamic> _$$_AstronomyDtoToJson(_$_AstronomyDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'title': instance.title,
      'url': instance.url,
      'media_type': instance.mediaType,
      'thumbnail_url': instance.thumbnailUrl,
    };
