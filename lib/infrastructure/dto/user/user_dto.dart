// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserDto with _$UserDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserDto({
    required String id,
    required String name,
    required String phoneNo,
    required String countryCode,
    required bool isProfileCreated,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
