class Nutrient {
  final int carbohydrate; // 탄수화물
  final int protein; // 단백질
  final int fat; // 지방
  final int dietaryFiber; // 식이섬유
  final int cholesterol; // 콜레스테롤
  final int saturatedFattyAcid; // 포화지방산

  Nutrient({
    required this.carbohydrate,
    required this.protein,
    required this.fat,
    required this.dietaryFiber,
    required this.cholesterol,
    required this.saturatedFattyAcid,
  });

  factory Nutrient.fromJson(Map<String, dynamic> json) {
    return Nutrient(
      carbohydrate: json['carbohydrate'] as int,
      protein: json['protein'] as int,
      fat: json['fat'] as int,
      dietaryFiber: json['dietaryFiber'] as int,
      cholesterol: json['cholesterol'] as int,
      saturatedFattyAcid: json['saturatedFattyAcid'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'carbohydrate': carbohydrate,
      'protein': protein,
      'fat': fat,
      'dietaryFiber': dietaryFiber,
      'cholesterol': cholesterol,
      'saturatedFattyAcid': saturatedFattyAcid,
    };
  }
}
