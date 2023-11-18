// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNo: json['phone_no'] as String,
      countryCode: json['country_code'] as String,
      isProfileCreated: json['is_profile_created'] as bool,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_no': instance.phoneNo,
      'country_code': instance.countryCode,
      'is_profile_created': instance.isProfileCreated,
    };
