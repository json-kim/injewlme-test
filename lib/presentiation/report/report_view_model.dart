import 'package:flutter/material.dart';

import 'package:injewlme/domain/usecase/get_diet_report_use_case.dart';
import 'package:injewlme/presentiation/report/report_event.dart';
import 'package:injewlme/presentiation/report/report_state.dart';

class ReportViewModel with ChangeNotifier {
  final GetDietReportUseCase _getDietReportUseCase;

  ReportViewModel(this._getDietReportUseCase, {DateTime? date})
      : _state = ReportState(date: date ?? DateTime.now()) {
    // _loadReport();
  }

  ReportState _state;
  ReportState get state => _state;

  void onEvent(ReportEvent event) {
    event.when(loadReport: _loadReport);
  }

  Future<void> _loadReport() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    // 다이어트 리포트 가져오기
    final result = await _getDietReportUseCase(_state.date);
    _state = _state.copyWith(dietReport: result);

    _state = _state.copyWith(isLoading: false);
    notifyListeners();
  }
}
