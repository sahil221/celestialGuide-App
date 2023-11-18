// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astronomy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstronomyDto _$AstronomyDtoFromJson(Map<String, dynamic> json) {
  return _AstronomyDto.fromJson(json);
}

/// @nodoc
mixin _$AstronomyDto {
  String get date => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstronomyDtoCopyWith<AstronomyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstronomyDtoCopyWith<$Res> {
  factory $AstronomyDtoCopyWith(
          AstronomyDto value, $Res Function(AstronomyDto) then) =
      _$AstronomyDtoCopyWithImpl<$Res, AstronomyDto>;
  @useResult
  $Res call(
      {String date,
      String explanation,
      String title,
      String url,
      String mediaType,
      String? thumbnailUrl});
}

/// @nodoc
class _$AstronomyDtoCopyWithImpl<$Res, $Val extends AstronomyDto>
    implements $AstronomyDtoCopyWith<$Res> {
  _$AstronomyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? title = null,
    Object? url = null,
    Object? mediaType = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AstronomyDtoCopyWith<$Res>
    implements $AstronomyDtoCopyWith<$Res> {
  factory _$$_AstronomyDtoCopyWith(
          _$_AstronomyDto value, $Res Function(_$_AstronomyDto) then) =
      __$$_AstronomyDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String explanation,
      String title,
      String url,
      String mediaType,
      String? thumbnailUrl});
}

/// @nodoc
class __$$_AstronomyDtoCopyWithImpl<$Res>
    extends _$AstronomyDtoCopyWithImpl<$Res, _$_AstronomyDto>
    implements _$$_AstronomyDtoCopyWith<$Res> {
  __$$_AstronomyDtoCopyWithImpl(
      _$_AstronomyDto _value, $Res Function(_$_AstronomyDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? explanation = null,
    Object? title = null,
    Object? url = null,
    Object? mediaType = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$_AstronomyDto(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AstronomyDto implements _AstronomyDto {
  _$_AstronomyDto(
      {required this.date,
      required this.explanation,
      required this.title,
      required this.url,
      required this.mediaType,
      this.thumbnailUrl});

  factory _$_AstronomyDto.fromJson(Map<String, dynamic> json) =>
      _$$_AstronomyDtoFromJson(json);

  @override
  final String date;
  @override
  final String explanation;
  @override
  final String title;
  @override
  final String url;
  @override
  final String mediaType;
  @override
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'AstronomyDto(date: $date, explanation: $explanation, title: $title, url: $url, mediaType: $mediaType, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AstronomyDto &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, explanation, title, url, mediaType, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AstronomyDtoCopyWith<_$_AstronomyDto> get copyWith =>
      __$$_AstronomyDtoCopyWithImpl<_$_AstronomyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AstronomyDtoToJson(
      this,
    );
  }
}

abstract class _AstronomyDto implements AstronomyDto {
  factory _AstronomyDto(
      {required final String date,
      required final String explanation,
      required final String title,
      required final String url,
      required final String mediaType,
      final String? thumbnailUrl}) = _$_AstronomyDto;

  factory _AstronomyDto.fromJson(Map<String, dynamic> json) =
      _$_AstronomyDto.fromJson;

  @override
  String get date;
  @override
  String get explanation;
  @override
  String get title;
  @override
  String get url;
  @override
  String get mediaType;
  @override
  String? get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AstronomyDtoCopyWith<_$_AstronomyDto> get copyWith =>
      throw _privateConstructorUsedError;
}
