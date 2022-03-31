import 'package:flutter/material.dart';
import 'package:injewlme/presentiation/report/report_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
