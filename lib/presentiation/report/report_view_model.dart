import 'package:flutter/material.dart';

import 'package:injewlme/domain/usecase/get_diet_report_use_case.dart';

class ReportViewModel with ChangeNotifier {
  final GetDietReportUseCase _getDietReportUseCase;

  ReportViewModel(this._getDietReportUseCase);

  void onEvent() {}
}
