// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'astronomy_dto.freezed.dart';
part 'astronomy_dto.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AstronomyDto with _$AstronomyDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory AstronomyDto({
    required String date,
    required String explanation,
    required String title,
    required String url,
    required String mediaType,
    String? thumbnailUrl,
  }) = _AstronomyDto;

  factory AstronomyDto.fromJson(Map<String, dynamic> json) =>
      _$AstronomyDtoFromJson(json);
}
