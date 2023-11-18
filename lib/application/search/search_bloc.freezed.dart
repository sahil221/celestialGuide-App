// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  bool get isStartDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, bool isStartDate)
        onDateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, bool isStartDate)? onDateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, bool isStartDate)? onDateChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnDateChange value) onDateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnDateChange value)? onDateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnDateChange value)? onDateChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({DateTime selectedDate, bool isStartDate});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? isStartDate = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isStartDate: null == isStartDate
          ? _value.isStartDate
          : isStartDate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnDateChangeCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$_OnDateChangeCopyWith(
          _$_OnDateChange value, $Res Function(_$_OnDateChange) then) =
      __$$_OnDateChangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDate, bool isStartDate});
}

/// @nodoc
class __$$_OnDateChangeCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_OnDateChange>
    implements _$$_OnDateChangeCopyWith<$Res> {
  __$$_OnDateChangeCopyWithImpl(
      _$_OnDateChange _value, $Res Function(_$_OnDateChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
    Object? isStartDate = null,
  }) {
    return _then(_$_OnDateChange(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isStartDate: null == isStartDate
          ? _value.isStartDate
          : isStartDate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnDateChange implements _OnDateChange {
  const _$_OnDateChange(
      {required this.selectedDate, required this.isStartDate});

  @override
  final DateTime selectedDate;
  @override
  final bool isStartDate;

  @override
  String toString() {
    return 'SearchEvent.onDateChange(selectedDate: $selectedDate, isStartDate: $isStartDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnDateChange &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.isStartDate, isStartDate) ||
                other.isStartDate == isStartDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate, isStartDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnDateChangeCopyWith<_$_OnDateChange> get copyWith =>
      __$$_OnDateChangeCopyWithImpl<_$_OnDateChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate, bool isStartDate)
        onDateChange,
  }) {
    return onDateChange(selectedDate, isStartDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate, bool isStartDate)? onDateChange,
  }) {
    return onDateChange?.call(selectedDate, isStartDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate, bool isStartDate)? onDateChange,
    required TResult orElse(),
  }) {
    if (onDateChange != null) {
      return onDateChange(selectedDate, isStartDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnDateChange value) onDateChange,
  }) {
    return onDateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnDateChange value)? onDateChange,
  }) {
    return onDateChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnDateChange value)? onDateChange,
    required TResult orElse(),
  }) {
    if (onDateChange != null) {
      return onDateChange(this);
    }
    return orElse();
  }
}

abstract class _OnDateChange implements SearchEvent {
  const factory _OnDateChange(
      {required final DateTime selectedDate,
      required final bool isStartDate}) = _$_OnDateChange;

  @override
  DateTime get selectedDate;
  @override
  bool get isStartDate;
  @override
  @JsonKey(ignore: true)
  _$$_OnDateChangeCopyWith<_$_OnDateChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
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
  TextEditingController get startDateController =>
      throw _privateConstructorUsedError;
  TextEditingController get endDateController =>
      throw _privateConstructorUsedError;
  DateTime? get selectedStartDate => throw _privateConstructorUsedError;
  DateTime? get selectedEndDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
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
      ScrollController scrollController,
      TextEditingController startDateController,
      TextEditingController endDateController,
      DateTime? selectedStartDate,
      DateTime? selectedEndDate});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    Object? startDateController = null,
    Object? endDateController = null,
    Object? selectedStartDate = freezed,
    Object? selectedEndDate = freezed,
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
      startDateController: null == startDateController
          ? _value.startDateController
          : startDateController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      endDateController: null == endDateController
          ? _value.endDateController
          : endDateController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      selectedStartDate: freezed == selectedStartDate
          ? _value.selectedStartDate
          : selectedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEndDate: freezed == selectedEndDate
          ? _value.selectedEndDate
          : selectedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
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
      ScrollController scrollController,
      TextEditingController startDateController,
      TextEditingController endDateController,
      DateTime? selectedStartDate,
      DateTime? selectedEndDate});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
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
    Object? startDateController = null,
    Object? endDateController = null,
    Object? selectedStartDate = freezed,
    Object? selectedEndDate = freezed,
  }) {
    return _then(_$_SearchState(
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
          ? _value._lsOfAstronomyData
          : lsOfAstronomyData // ignore: cast_nullable_to_non_nullable
              as List<AstronomyDto>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      startDateController: null == startDateController
          ? _value.startDateController
          : startDateController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      endDateController: null == endDateController
          ? _value.endDateController
          : endDateController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      selectedStartDate: freezed == selectedStartDate
          ? _value.selectedStartDate
          : selectedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEndDate: freezed == selectedEndDate
          ? _value.selectedEndDate
          : selectedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.isFailed,
      required this.isSuccessful,
      required this.isDarkMode,
      required this.noUse,
      required this.hasMoreData,
      required this.responseMsg,
      required this.lastDateFetched,
      required this.astronomyRepository,
      required final List<AstronomyDto> lsOfAstronomyData,
      required this.scrollController,
      required this.startDateController,
      required this.endDateController,
      this.selectedStartDate,
      this.selectedEndDate})
      : _lsOfAstronomyData = lsOfAstronomyData;

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
  final List<AstronomyDto> _lsOfAstronomyData;
  @override
  List<AstronomyDto> get lsOfAstronomyData {
    if (_lsOfAstronomyData is EqualUnmodifiableListView)
      return _lsOfAstronomyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lsOfAstronomyData);
  }

  @override
  final ScrollController scrollController;
  @override
  final TextEditingController startDateController;
  @override
  final TextEditingController endDateController;
  @override
  final DateTime? selectedStartDate;
  @override
  final DateTime? selectedEndDate;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isFailed: $isFailed, isSuccessful: $isSuccessful, isDarkMode: $isDarkMode, noUse: $noUse, hasMoreData: $hasMoreData, responseMsg: $responseMsg, lastDateFetched: $lastDateFetched, astronomyRepository: $astronomyRepository, lsOfAstronomyData: $lsOfAstronomyData, scrollController: $scrollController, startDateController: $startDateController, endDateController: $endDateController, selectedStartDate: $selectedStartDate, selectedEndDate: $selectedEndDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
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
                .equals(other._lsOfAstronomyData, _lsOfAstronomyData) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.startDateController, startDateController) ||
                other.startDateController == startDateController) &&
            (identical(other.endDateController, endDateController) ||
                other.endDateController == endDateController) &&
            (identical(other.selectedStartDate, selectedStartDate) ||
                other.selectedStartDate == selectedStartDate) &&
            (identical(other.selectedEndDate, selectedEndDate) ||
                other.selectedEndDate == selectedEndDate));
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
      const DeepCollectionEquality().hash(_lsOfAstronomyData),
      scrollController,
      startDateController,
      endDateController,
      selectedStartDate,
      selectedEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
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
      required final ScrollController scrollController,
      required final TextEditingController startDateController,
      required final TextEditingController endDateController,
      final DateTime? selectedStartDate,
      final DateTime? selectedEndDate}) = _$_SearchState;

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
  TextEditingController get startDateController;
  @override
  TextEditingController get endDateController;
  @override
  DateTime? get selectedStartDate;
  @override
  DateTime? get selectedEndDate;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
