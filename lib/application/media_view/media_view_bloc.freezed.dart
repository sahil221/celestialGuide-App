// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MediaViewState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MediaViewState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MediaViewState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaViewEventCopyWith<$Res> {
  factory $MediaViewEventCopyWith(
          MediaViewEvent value, $Res Function(MediaViewEvent) then) =
      _$MediaViewEventCopyWithImpl<$Res, MediaViewEvent>;
}

/// @nodoc
class _$MediaViewEventCopyWithImpl<$Res, $Val extends MediaViewEvent>
    implements $MediaViewEventCopyWith<$Res> {
  _$MediaViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$MediaViewEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'MediaViewEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MediaViewState state) emitFromAnywhere,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MediaViewState state)? emitFromAnywhere,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MediaViewState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MediaViewEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  @useResult
  $Res call({MediaViewState state});

  $MediaViewStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$MediaViewEventCopyWithImpl<$Res, _$_EmitFromAnywhere>
    implements _$$_EmitFromAnywhereCopyWith<$Res> {
  __$$_EmitFromAnywhereCopyWithImpl(
      _$_EmitFromAnywhere _value, $Res Function(_$_EmitFromAnywhere) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_EmitFromAnywhere(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediaViewState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaViewStateCopyWith<$Res> get state {
    return $MediaViewStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final MediaViewState state;

  @override
  String toString() {
    return 'MediaViewEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmitFromAnywhere &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      __$$_EmitFromAnywhereCopyWithImpl<_$_EmitFromAnywhere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(MediaViewState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(MediaViewState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(MediaViewState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements MediaViewEvent {
  const factory _EmitFromAnywhere({required final MediaViewState state}) =
      _$_EmitFromAnywhere;

  MediaViewState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MediaViewState {
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get isVideo => throw _privateConstructorUsedError;
  bool get noUse => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  VideoPlayerController? get videoPlayerController =>
      throw _privateConstructorUsedError;
  ChewieController? get chewieController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaViewStateCopyWith<MediaViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaViewStateCopyWith<$Res> {
  factory $MediaViewStateCopyWith(
          MediaViewState value, $Res Function(MediaViewState) then) =
      _$MediaViewStateCopyWithImpl<$Res, MediaViewState>;
  @useResult
  $Res call(
      {bool isDarkMode,
      bool isVideo,
      bool noUse,
      String url,
      VideoPlayerController? videoPlayerController,
      ChewieController? chewieController});
}

/// @nodoc
class _$MediaViewStateCopyWithImpl<$Res, $Val extends MediaViewState>
    implements $MediaViewStateCopyWith<$Res> {
  _$MediaViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? isVideo = null,
    Object? noUse = null,
    Object? url = null,
    Object? videoPlayerController = freezed,
    Object? chewieController = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: null == noUse
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      videoPlayerController: freezed == videoPlayerController
          ? _value.videoPlayerController
          : videoPlayerController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaViewStateCopyWith<$Res>
    implements $MediaViewStateCopyWith<$Res> {
  factory _$$_MediaViewStateCopyWith(
          _$_MediaViewState value, $Res Function(_$_MediaViewState) then) =
      __$$_MediaViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDarkMode,
      bool isVideo,
      bool noUse,
      String url,
      VideoPlayerController? videoPlayerController,
      ChewieController? chewieController});
}

/// @nodoc
class __$$_MediaViewStateCopyWithImpl<$Res>
    extends _$MediaViewStateCopyWithImpl<$Res, _$_MediaViewState>
    implements _$$_MediaViewStateCopyWith<$Res> {
  __$$_MediaViewStateCopyWithImpl(
      _$_MediaViewState _value, $Res Function(_$_MediaViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? isVideo = null,
    Object? noUse = null,
    Object? url = null,
    Object? videoPlayerController = freezed,
    Object? chewieController = freezed,
  }) {
    return _then(_$_MediaViewState(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: null == noUse
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      videoPlayerController: freezed == videoPlayerController
          ? _value.videoPlayerController
          : videoPlayerController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      chewieController: freezed == chewieController
          ? _value.chewieController
          : chewieController // ignore: cast_nullable_to_non_nullable
              as ChewieController?,
    ));
  }
}

/// @nodoc

class _$_MediaViewState implements _MediaViewState {
  const _$_MediaViewState(
      {required this.isDarkMode,
      required this.isVideo,
      required this.noUse,
      required this.url,
      this.videoPlayerController,
      this.chewieController});

  @override
  final bool isDarkMode;
  @override
  final bool isVideo;
  @override
  final bool noUse;
  @override
  final String url;
  @override
  final VideoPlayerController? videoPlayerController;
  @override
  final ChewieController? chewieController;

  @override
  String toString() {
    return 'MediaViewState(isDarkMode: $isDarkMode, isVideo: $isVideo, noUse: $noUse, url: $url, videoPlayerController: $videoPlayerController, chewieController: $chewieController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaViewState &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.noUse, noUse) || other.noUse == noUse) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.videoPlayerController, videoPlayerController) ||
                other.videoPlayerController == videoPlayerController) &&
            (identical(other.chewieController, chewieController) ||
                other.chewieController == chewieController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, isVideo, noUse, url,
      videoPlayerController, chewieController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaViewStateCopyWith<_$_MediaViewState> get copyWith =>
      __$$_MediaViewStateCopyWithImpl<_$_MediaViewState>(this, _$identity);
}

abstract class _MediaViewState implements MediaViewState {
  const factory _MediaViewState(
      {required final bool isDarkMode,
      required final bool isVideo,
      required final bool noUse,
      required final String url,
      final VideoPlayerController? videoPlayerController,
      final ChewieController? chewieController}) = _$_MediaViewState;

  @override
  bool get isDarkMode;
  @override
  bool get isVideo;
  @override
  bool get noUse;
  @override
  String get url;
  @override
  VideoPlayerController? get videoPlayerController;
  @override
  ChewieController? get chewieController;
  @override
  @JsonKey(ignore: true)
  _$$_MediaViewStateCopyWith<_$_MediaViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
