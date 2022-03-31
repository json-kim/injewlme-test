import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injewlme/domain/model/meal.dart';

part 'report_event.freezed.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.loadReport() = LoadReport;
  const factory ReportEvent.selectMeal(MealType mealType) = SelectMeal;
}
