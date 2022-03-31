// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReportEventTearOff {
  const _$ReportEventTearOff();

  LoadReport loadReport() {
    return const LoadReport();
  }

  SelectMeal selectMeal(MealType mealType) {
    return SelectMeal(
      mealType,
    );
  }
}

/// @nodoc
const $ReportEvent = _$ReportEventTearOff();

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadReport,
    required TResult Function(MealType mealType) selectMeal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadReport,
    TResult Function(MealType mealType)? selectMeal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadReport,
    TResult Function(MealType mealType)? selectMeal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReport value) loadReport,
    required TResult Function(SelectMeal value) selectMeal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadReport value)? loadReport,
    TResult Function(SelectMeal value)? selectMeal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReport value)? loadReport,
    TResult Function(SelectMeal value)? selectMeal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  final ReportEvent _value;
  // ignore: unused_field
  final $Res Function(ReportEvent) _then;
}

/// @nodoc
abstract class $LoadReportCopyWith<$Res> {
  factory $LoadReportCopyWith(
          LoadReport value, $Res Function(LoadReport) then) =
      _$LoadReportCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadReportCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements $LoadReportCopyWith<$Res> {
  _$LoadReportCopyWithImpl(LoadReport _value, $Res Function(LoadReport) _then)
      : super(_value, (v) => _then(v as LoadReport));

  @override
  LoadReport get _value => super._value as LoadReport;
}

/// @nodoc

class _$LoadReport implements LoadReport {
  const _$LoadReport();

  @override
  String toString() {
    return 'ReportEvent.loadReport()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadReport);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadReport,
    required TResult Function(MealType mealType) selectMeal,
  }) {
    return loadReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadReport,
    TResult Function(MealType mealType)? selectMeal,
  }) {
    return loadReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadReport,
    TResult Function(MealType mealType)? selectMeal,
    required TResult orElse(),
  }) {
    if (loadReport != null) {
      return loadReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReport value) loadReport,
    required TResult Function(SelectMeal value) selectMeal,
  }) {
    return loadReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadReport value)? loadReport,
    TResult Function(SelectMeal value)? selectMeal,
  }) {
    return loadReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReport value)? loadReport,
    TResult Function(SelectMeal value)? selectMeal,
    required TResult orElse(),
  }) {
    if (loadReport != null) {
      return loadReport(this);
    }
    return orElse();
  }
}

abstract class LoadReport implements ReportEvent {
  const factory LoadReport() = _$LoadReport;
}

/// @nodoc
abstract class $SelectMealCopyWith<$Res> {
  factory $SelectMealCopyWith(
          SelectMeal value, $Res Function(SelectMeal) then) =
      _$SelectMealCopyWithImpl<$Res>;
  $Res call({MealType mealType});
}

/// @nodoc
class _$SelectMealCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements $SelectMealCopyWith<$Res> {
  _$SelectMealCopyWithImpl(SelectMeal _value, $Res Function(SelectMeal) _then)
      : super(_value, (v) => _then(v as SelectMeal));

  @override
  SelectMeal get _value => super._value as SelectMeal;

  @override
  $Res call({
    Object? mealType = freezed,
  }) {
    return _then(SelectMeal(
      mealType == freezed
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
    ));
  }
}

/// @nodoc

class _$SelectMeal implements SelectMeal {
  const _$SelectMeal(this.mealType);

  @override
  final MealType mealType;

  @override
  String toString() {
    return 'ReportEvent.selectMeal(mealType: $mealType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectMeal &&
            const DeepCollectionEquality().equals(other.mealType, mealType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mealType));

  @JsonKey(ignore: true)
  @override
  $SelectMealCopyWith<SelectMeal> get copyWith =>
      _$SelectMealCopyWithImpl<SelectMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadReport,
    required TResult Function(MealType mealType) selectMeal,
  }) {
    return selectMeal(mealType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadReport,
    TResult Function(MealType mealType)? selectMeal,
  }) {
    return selectMeal?.call(mealType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadReport,
    TResult Function(MealType mealType)? selectMeal,
    required TResult orElse(),
  }) {
    if (selectMeal != null) {
      return selectMeal(mealType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReport value) loadReport,
    required TResult Function(SelectMeal value) selectMeal,
  }) {
    return selectMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadReport value)? loadReport,
    TResult Function(SelectMeal value)? selectMeal,
  }) {
    return selectMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReport value)? loadReport,
    TResult Function(SelectMeal value)? selectMeal,
    required TResult orElse(),
  }) {
    if (selectMeal != null) {
      return selectMeal(this);
    }
    return orElse();
  }
}

abstract class SelectMeal implements ReportEvent {
  const factory SelectMeal(MealType mealType) = _$SelectMeal;

  MealType get mealType;
  @JsonKey(ignore: true)
  $SelectMealCopyWith<SelectMeal> get copyWith =>
      throw _privateConstructorUsedError;
}
