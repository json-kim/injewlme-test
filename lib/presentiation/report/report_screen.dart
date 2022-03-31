import 'package:flutter/material.dart';
import 'package:injewlme/presentiation/report/report_event.dart';
import 'package:injewlme/presentiation/report/report_view_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('식단 보고서'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final viewModel = context.watch<ReportViewModel>();
    final state = viewModel.state;
    final report = state.dietReport;

    final Widget body;

    // 로딩 중
    if (state.isLoading) {
      body = const Center(
        child: CircularProgressIndicator(),
      );
    }
    // 값 불러오기 실패
    else if (report == null) {
      body = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('다시 요청해주세요'),
            IconButton(
              onPressed: () {
                viewModel.onEvent(const ReportEvent.loadReport());
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      );
    }
    // 값 불러오기 성공
    else {
      body = Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: RefreshIndicator(
          onRefresh: () async {
            viewModel.onEvent(const ReportEvent.loadReport());
          },
          child: ListView(
            children: [],
          ),
        ),
      );
    }

    return body;
  }
}
