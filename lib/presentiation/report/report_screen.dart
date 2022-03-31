import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:injewlme/domain/model/meal.dart';
import 'package:injewlme/presentiation/report/components/meal_card.dart';
import 'package:injewlme/presentiation/report/components/netrient_bar.dart';
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
        title: const Text(
          '식단 보고서',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            children: [
              MealCard(
                meal: report.diet.breakFast,
                onTap: () {
                  viewModel.onEvent(
                      ReportEvent.selectMeal(report.diet.breakFast.mealType));
                },
                isSelected:
                    state.selecteMealType == report.diet.breakFast.mealType,
              ), // 조식 카드
              Divider(
                color: Colors.grey.withOpacity(0.5),
                height: 0,
              ),
              MealCard(
                meal: report.diet.launch,
                onTap: () {
                  viewModel.onEvent(
                      ReportEvent.selectMeal(report.diet.launch.mealType));
                },
                isSelected:
                    state.selecteMealType == report.diet.launch.mealType,
              ), // 중식 카드
              Divider(
                color: Colors.grey.withOpacity(0.5),
                height: 0,
              ),
              MealCard(
                meal: report.diet.dinner,
                onTap: () {
                  viewModel.onEvent(
                      ReportEvent.selectMeal(report.diet.dinner.mealType));
                },
                isSelected:
                    state.selecteMealType == report.diet.dinner.mealType,
              ), // 석식 카드
              Divider(
                color: Colors.grey.withOpacity(0.5),
                height: 0,
              ),
              SizedBox(height: 5.h),
              Text(
                '다량영양소',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3.h),
              SizedBox(
                width: 90.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NutrientBar(
                      name: '탄수화물',
                      percent: 24,
                      color: Color.fromRGBO(72, 111, 249, 1),
                    ),
                    SizedBox(height: 2.h),
                    const NutrientBar(
                      name: '단백질',
                      percent: 65,
                      color: Color.fromRGBO(68, 141, 235, 1),
                    ),
                    SizedBox(height: 2.h),
                    const NutrientBar(
                      name: '지방',
                      percent: 51,
                      color: Color.fromRGBO(66, 170, 224, 1),
                    ),
                    SizedBox(height: 2.h),
                    const NutrientBar(
                      name: '총 식이섬유',
                      percent: 24,
                      color: Color.fromRGBO(65, 196, 214, 1),
                    ),
                    SizedBox(height: 2.h),
                    const NutrientBar(
                      name: '콜레스테롤',
                      percent: 48,
                      color: Color.fromRGBO(63, 229, 207, 1),
                    ),
                    SizedBox(height: 2.h),
                    const NutrientBar(
                      name: '총 포화 지방산',
                      percent: 48,
                      color: Color.fromRGBO(65, 255, 196, 1),
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: max(40.h, 300),
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: [
                      PieChartSectionData(
                        color: const Color.fromRGBO(140, 93, 223, 1),
                        value: 35.85,
                        title: '단백질\n35.85%',
                        radius: max(18.h, 150),
                        titleStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      PieChartSectionData(
                        color: const Color.fromRGBO(76, 188, 180, 1),
                        value: 35.85,
                        title: '지방\n35.85%',
                        radius: max(18.h, 150),
                        titleStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      PieChartSectionData(
                        color: const Color.fromRGBO(250, 170, 62, 1),
                        value: 28.30,
                        title: '탄수화물\n28.30%',
                        radius: max(18.h, 150),
                        titleStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return body;
  }
}
