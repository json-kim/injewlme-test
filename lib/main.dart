import 'package:flutter/material.dart';
import 'package:injewlme/core/di/provider_setting.dart';
import 'package:injewlme/presentiation/report/report_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  final globalProviders = await setProviders(); // 프로바이더 세팅

  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'injewlme',
      home: ResponsiveSizer(
        builder: (context, orientation, screenType) => const ReportScreen(),
      ),
    );
  }
}
