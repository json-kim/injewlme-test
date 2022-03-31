import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NutrientBar extends StatelessWidget {
  final String name;
  final int percent;
  final Color color;

  const NutrientBar({
    required this.name,
    required this.percent,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        SizedBox(height: 1.h),
        SizedBox(
            height: max(3.h, 25),
            child: Row(
              children: [
                Expanded(child: LayoutBuilder(builder: (context, constraints) {
                  return Stack(
                    children: [
                      Container(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.only(right: 8),
                          width: constraints.maxWidth * percent / 100,
                          color: color,
                          alignment: Alignment.centerRight,
                          child: Text(
                            percent.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  );
                })),
                const SizedBox(width: 8),
                const Text('100%'),
              ],
            ))
      ],
    );
  }
}
