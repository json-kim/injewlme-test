// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReportStateTearOff {
  const _$ReportStateTearOff();

  _ReportState call(
      {bool isLoading = false,
      MealType? selecteMealType = null,
      required DateTime date,
      DietReport? dietReport = null}) {
    return _ReportState(
      isLoading: isLoading,
      selecteMealType: selecteMealType,
      date: date,
      dietReport: dietReport,
    );
  }
}

/// @nodoc
const $ReportState = _$ReportStateTearOff();

/// @nodoc
mixin _$ReportState {
  bool get isLoading => throw _privateConstructorUsedError;
  MealType? get selecteMealType => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DietReport? get dietReport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      MealType? selecteMealType,
      DateTime date,
      DietReport? dietReport});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selecteMealType = freezed,
    Object? date = freezed,
    Object? dietReport = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selecteMealType: selecteMealType == freezed
          ? _value.selecteMealType
          : selecteMealType // ignore: cast_nullable_to_non_nullable
              as MealType?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dietReport: dietReport == freezed
          ? _value.dietReport
          : dietReport // ignore: cast_nullable_to_non_nullable
              as DietReport?,
    ));
  }
}

/// @nodoc
abstract class _$ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$ReportStateCopyWith(
          _ReportState value, $Res Function(_ReportState) then) =
      __$ReportStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      MealType? selecteMealType,
      DateTime date,
      DietReport? dietReport});
}

/// @nodoc
class __$ReportStateCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements _$ReportStateCopyWith<$Res> {
  __$ReportStateCopyWithImpl(
      _ReportState _value, $Res Function(_ReportState) _then)
      : super(_value, (v) => _then(v as _ReportState));

  @override
  _ReportState get _value => super._value as _ReportState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? selecteMealType = freezed,
    Object? date = freezed,
    Object? dietReport = freezed,
  }) {
    return _then(_ReportState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selecteMealType: selecteMealType == freezed
          ? _value.selecteMealType
          : selecteMealType // ignore: cast_nullable_to_non_nullable
              as MealType?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dietReport: dietReport == freezed
          ? _value.dietReport
          : dietReport // ignore: cast_nullable_to_non_nullable
              as DietReport?,
    ));
  }
}

/// @nodoc

class _$_ReportState implements _ReportState {
  const _$_ReportState(
      {this.isLoading = false,
      this.selecteMealType = null,
      required this.date,
      this.dietReport = null});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final MealType? selecteMealType;
  @override
  final DateTime date;
  @JsonKey()
  @override
  final DietReport? dietReport;

  @override
  String toString() {
    return 'ReportState(isLoading: $isLoading, selecteMealType: $selecteMealType, date: $date, dietReport: $dietReport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.selecteMealType, selecteMealType) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.dietReport, dietReport));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(selecteMealType),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(dietReport));

  @JsonKey(ignore: true)
  @override
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      __$ReportStateCopyWithImpl<_ReportState>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  const factory _ReportState(
      {bool isLoading,
      MealType? selecteMealType,
      required DateTime date,
      DietReport? dietReport}) = _$_ReportState;

  @override
  bool get isLoading;
  @override
  MealType? get selecteMealType;
  @override
  DateTime get date;
  @override
  DietReport? get dietReport;
  @override
  @JsonKey(ignore: true)
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
