import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_event.freezed.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.loadReport() = LoadReport;
}
