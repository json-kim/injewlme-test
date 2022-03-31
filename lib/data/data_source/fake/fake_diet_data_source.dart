import 'dart:convert';

import 'package:injewlme/domain/model/daily_diet.dart';

class FakeDietDataSource {
  Future<DailyDiet> requestDailyDiet(DateTime date) async {
    final year = date.year;
    final month = date.month;
    final day = date.day;

    final jsonDiet = jsonDecode(fakeData)['diet'];

    final todayDiet = DailyDiet.fromJson(jsonDiet);

    return todayDiet;
  }
}

const String fakeData = '''
{
  "diet": {
    "breakFast": {
      "mealType": 0,
      "mainDish": {
        "name": "율무밥",
        "type": "밥류",
        "gredients": [
          "흰쌀"
        ],
        "weight": 210,
        "kcal": 130
      },
      "dishes": [
        {
          "name": "율무밥",
          "type": "밥류",
          "gredients": [
            "흰쌀"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "율무밥",
          "type": "밥류",
          "gredients": [
            "흰쌀"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "율무밥",
          "type": "밥류",
          "gredients": [
            "흰쌀"
          ],
          "weight": 210,
          "kcal": 130
        }
      ]
    },
    "launch": {
      "mealType": 1,
      "mainDish": {
        "name": "열무보리비빔밥",
        "type": "밥류",
        "gredients": [
          "보리쌀"
        ],
        "weight": 210,
        "kcal": 130
      },
      "dishes": [
        {
          "name": "열무보리비빔밥",
          "type": "밥류",
          "gredients": [
            "보리쌀"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "열무보리비빔밥",
          "type": "밥류",
          "gredients": [
            "보리쌀"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "열무보리비빔밥",
          "type": "밥류",
          "gredients": [
            "보리쌀"
          ],
          "weight": 210,
          "kcal": 130
        }
      ]
    },
    "dinner": {
      "mealType": 2,
      "mainDish": {
        "name": "찹쌀땅콩밥",
        "type": "밥류",
        "gredients": [
          "찹쌀",
          "땅콩밥"
        ],
        "weight": 210,
        "kcal": 130
      },
      "dishes": [
        {
          "name": "찹쌀땅콩밥",
          "type": "밥류",
          "gredients": [
            "찹쌀",
            "땅콩밥"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "찹쌀땅콩밥",
          "type": "밥류",
          "gredients": [
            "찹쌀",
            "땅콩밥"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "찹쌀땅콩밥",
          "type": "밥류",
          "gredients": [
            "찹쌀",
            "땅콩밥"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "찹쌀땅콩밥",
          "type": "밥류",
          "gredients": [
            "찹쌀",
            "땅콩밥"
          ],
          "weight": 210,
          "kcal": 130
        },
        {
          "name": "찹쌀땅콩밥",
          "type": "밥류",
          "gredients": [
            "찹쌀",
            "땅콩밥"
          ],
          "weight": 210,
          "kcal": 130
        }
      ]
    }
  }
}
''';
