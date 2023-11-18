// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onLoad,
    required TResult Function() onLoadMore,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onLoad,
    TResult? Function()? onLoadMore,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onLoad,
    TResult Function()? onLoadMore,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
class __$$_InitCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'HomeEvent.init()';
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
    required TResult Function() onLoad,
    required TResult Function() onLoadMore,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onLoad,
    TResult? Function()? onLoadMore,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onLoad,
    TResult Function()? onLoadMore,
    TResult Function(HomeState state)? emitFromAnywhere,
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
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements HomeEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_OnLoadCopyWith<$Res> {
  factory _$$_OnLoadCopyWith(_$_OnLoad value, $Res Function(_$_OnLoad) then) =
      __$$_OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_OnLoad>
    implements _$$_OnLoadCopyWith<$Res> {
  __$$_OnLoadCopyWithImpl(_$_OnLoad _value, $Res Function(_$_OnLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnLoad implements _OnLoad {
  const _$_OnLoad();

  @override
  String toString() {
    return 'HomeEvent.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onLoad,
    required TResult Function() onLoadMore,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onLoad,
    TResult? Function()? onLoadMore,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onLoad,
    TResult Function()? onLoadMore,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class _OnLoad implements HomeEvent {
  const factory _OnLoad() = _$_OnLoad;
}

/// @nodoc
abstract class _$$_OnLoadMoreCopyWith<$Res> {
  factory _$$_OnLoadMoreCopyWith(
          _$_OnLoadMore value, $Res Function(_$_OnLoadMore) then) =
      __$$_OnLoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadMoreCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_OnLoadMore>
    implements _$$_OnLoadMoreCopyWith<$Res> {
  __$$_OnLoadMoreCopyWithImpl(
      _$_OnLoadMore _value, $Res Function(_$_OnLoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnLoadMore implements _OnLoadMore {
  const _$_OnLoadMore();

  @override
  String toString() {
    return 'HomeEvent.onLoadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onLoad,
    required TResult Function() onLoadMore,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return onLoadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onLoad,
    TResult? Function()? onLoadMore,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return onLoadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onLoad,
    TResult Function()? onLoadMore,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onLoadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore(this);
    }
    return orElse();
  }
}

abstract class _OnLoadMore implements HomeEvent {
  const factory _OnLoadMore() = _$_OnLoadMore;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeState state});

  $HomeStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_EmitFromAnywhere>
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
              as HomeState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<$Res> get state {
    return $HomeStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final HomeState state;

  @override
  String toString() {
    return 'HomeEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() onLoad,
    required TResult Function() onLoadMore,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? onLoad,
    TResult? Function()? onLoadMore,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onLoad,
    TResult Function()? onLoadMore,
    TResult Function(HomeState state)? emitFromAnywhere,
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
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_OnLoadMore value) onLoadMore,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_OnLoadMore value)? onLoadMore,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_OnLoadMore value)? onLoadMore,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements HomeEvent {
  const factory _EmitFromAnywhere({required final HomeState state}) =
      _$_EmitFromAnywhere;

  HomeState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  bool get noUse => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;
  String get responseMsg => throw _privateConstructorUsedError;
  String get lastDateFetched => throw _privateConstructorUsedError;
  AstronomyRepository get astronomyRepository =>
      throw _privateConstructorUsedError;
  List<AstronomyDto> get lsOfAstronomyData =>
      throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccessful,
      bool isDarkMode,
      bool noUse,
      bool hasMoreData,
      String responseMsg,
      String lastDateFetched,
      AstronomyRepository astronomyRepository,
      List<AstronomyDto> lsOfAstronomyData,
      ScrollController scrollController});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccessful = null,
    Object? isDarkMode = null,
    Object? noUse = null,
    Object? hasMoreData = null,
    Object? responseMsg = null,
    Object? lastDateFetched = null,
    Object? astronomyRepository = null,
    Object? lsOfAstronomyData = null,
    Object? scrollController = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: null == noUse
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      responseMsg: null == responseMsg
          ? _value.responseMsg
          : responseMsg // ignore: cast_nullable_to_non_nullable
              as String,
      lastDateFetched: null == lastDateFetched
          ? _value.lastDateFetched
          : lastDateFetched // ignore: cast_nullable_to_non_nullable
              as String,
      astronomyRepository: null == astronomyRepository
          ? _value.astronomyRepository
          : astronomyRepository // ignore: cast_nullable_to_non_nullable
              as AstronomyRepository,
      lsOfAstronomyData: null == lsOfAstronomyData
          ? _value.lsOfAstronomyData
          : lsOfAstronomyData // ignore: cast_nullable_to_non_nullable
              as List<AstronomyDto>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isFailed,
      bool isSuccessful,
      bool isDarkMode,
      bool noUse,
      bool hasMoreData,
      String responseMsg,
      String lastDateFetched,
      AstronomyRepository astronomyRepository,
      List<AstronomyDto> lsOfAstronomyData,
      ScrollController scrollController});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isFailed = null,
    Object? isSuccessful = null,
    Object? isDarkMode = null,
    Object? noUse = null,
    Object? hasMoreData = null,
    Object? responseMsg = null,
    Object? lastDateFetched = null,
    Object? astronomyRepository = null,
    Object? lsOfAstronomyData = null,
    Object? scrollController = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: null == isSuccessful
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: null == noUse
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      responseMsg: null == responseMsg
          ? _value.responseMsg
          : responseMsg // ignore: cast_nullable_to_non_nullable
              as String,
      lastDateFetched: null == lastDateFetched
          ? _value.lastDateFetched
          : lastDateFetched // ignore: cast_nullable_to_non_nullable
              as String,
      astronomyRepository: null == astronomyRepository
          ? _value.astronomyRepository
          : astronomyRepository // ignore: cast_nullable_to_non_nullable
              as AstronomyRepository,
      lsOfAstronomyData: null == lsOfAstronomyData
          ? _value.lsOfAstronomyData
          : lsOfAstronomyData // ignore: cast_nullable_to_non_nullable
              as List<AstronomyDto>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isLoading,
      required this.isFailed,
      required this.isSuccessful,
      required this.isDarkMode,
      required this.noUse,
      required this.hasMoreData,
      required this.responseMsg,
      required this.lastDateFetched,
      required this.astronomyRepository,
      required this.lsOfAstronomyData,
      required this.scrollController});

  @override
  final bool isLoading;
  @override
  final bool isFailed;
  @override
  final bool isSuccessful;
  @override
  final bool isDarkMode;
  @override
  final bool noUse;
  @override
  final bool hasMoreData;
  @override
  final String responseMsg;
  @override
  final String lastDateFetched;
  @override
  final AstronomyRepository astronomyRepository;
  @override
  final List<AstronomyDto> lsOfAstronomyData;
  @override
  final ScrollController scrollController;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, isFailed: $isFailed, isSuccessful: $isSuccessful, isDarkMode: $isDarkMode, noUse: $noUse, hasMoreData: $hasMoreData, responseMsg: $responseMsg, lastDateFetched: $lastDateFetched, astronomyRepository: $astronomyRepository, lsOfAstronomyData: $lsOfAstronomyData, scrollController: $scrollController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.isSuccessful, isSuccessful) ||
                other.isSuccessful == isSuccessful) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.noUse, noUse) || other.noUse == noUse) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData) &&
            (identical(other.responseMsg, responseMsg) ||
                other.responseMsg == responseMsg) &&
            (identical(other.lastDateFetched, lastDateFetched) ||
                other.lastDateFetched == lastDateFetched) &&
            (identical(other.astronomyRepository, astronomyRepository) ||
                other.astronomyRepository == astronomyRepository) &&
            const DeepCollectionEquality()
                .equals(other.lsOfAstronomyData, lsOfAstronomyData) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isFailed,
      isSuccessful,
      isDarkMode,
      noUse,
      hasMoreData,
      responseMsg,
      lastDateFetched,
      astronomyRepository,
      const DeepCollectionEquality().hash(lsOfAstronomyData),
      scrollController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final bool isFailed,
      required final bool isSuccessful,
      required final bool isDarkMode,
      required final bool noUse,
      required final bool hasMoreData,
      required final String responseMsg,
      required final String lastDateFetched,
      required final AstronomyRepository astronomyRepository,
      required final List<AstronomyDto> lsOfAstronomyData,
      required final ScrollController scrollController}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  bool get isFailed;
  @override
  bool get isSuccessful;
  @override
  bool get isDarkMode;
  @override
  bool get noUse;
  @override
  bool get hasMoreData;
  @override
  String get responseMsg;
  @override
  String get lastDateFetched;
  @override
  AstronomyRepository get astronomyRepository;
  @override
  List<AstronomyDto> get lsOfAstronomyData;
  @override
  ScrollController get scrollController;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
