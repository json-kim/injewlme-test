class Dish {
  final String type; // 종류
  final List<String> gredients; // 재료들
  final int weight; // 정량
  final int kcal; // 칼로리

  Dish({
    required this.type,
    required this.gredients,
    required this.weight,
    required this.kcal,
  });

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
      type: json['type'] as String,
      gredients: json['gredients'] as List<String>,
      weight: json['weight'] as int,
      kcal: json['kcal'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'gredients': gredients,
      'weight': weight,
      'kcal': 'kcal'
    };
  }
}
