import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injewlme/domain/model/meal.dart';
import 'package:injewlme/domain/usecase/response/diet_report.dart';

part 'report_state.freezed.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    @Default(false) bool isLoading,
    @Default(null) MealType? selecteMealType,
    required DateTime date,
    @Default(null) DietReport? dietReport,
  }) = _ReportState;
}
