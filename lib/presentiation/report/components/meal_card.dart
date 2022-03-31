import 'dart:math';

import 'package:flutter/material.dart';
import 'package:injewlme/domain/model/meal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    Key? key,
    required this.meal,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  final Meal meal;
  final void Function() onTap;
  final bool isSelected;

  String getMealName(MealType type) {
    switch (type) {
      case MealType.breakfast:
        return '조식';
      case MealType.launch:
        return '중식';
      default:
        return '석식';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: max(25.h, 200),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getMealName(meal.mealType),
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ), // 식사 종류 (조식/중식/석식)
                        const SizedBox(height: 16),
                        RichText(
                          text: TextSpan(
                              text: meal.totalKcal.toString(),
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: ' kcal',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.normal),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey.withOpacity(0.5),
                  width: 0.5,
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meal.mainDish.name,
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 18.sp,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('종류'),
                            Text(meal.mainDish.name),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('재료'),
                            Text(meal.mainDish.gredients.join(', ')),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('정량'),
                            Text('${meal.mainDish.weight}g'),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('칼로리'),
                            Text('${meal.mainDish.kcal}kcal'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (isSelected)
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(0.1),
                    border: Border.all(color: Colors.lightBlue)),
              )
          ],
        ),
      ),
    );
  }
}
