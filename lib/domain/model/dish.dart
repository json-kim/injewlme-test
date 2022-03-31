class Dish {
  final String name;
  final String type; // 종류
  final List<String> gredients; // 재료들
  final int weight; // 정량
  final int kcal; // 칼로리

  Dish({
    required this.name,
    required this.type,
    required this.gredients,
    required this.weight,
    required this.kcal,
  });

  factory Dish.fromJson(Map<String, dynamic> json) {
    final gredients = (json['gredients'] as List).cast<String>();

    return Dish(
      name: json['name'] as String,
      type: json['type'] as String,
      gredients: gredients,
      weight: json['weight'] as int,
      kcal: json['kcal'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'gredients': gredients,
      'weight': weight,
      'kcal': 'kcal'
    };
  }

  @override
  String toString() {
    return 'Dish(name: $name, type: $type, gredients: $gredients, weight: $weight, kcal: $kcal)';
  }
}
