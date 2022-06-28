import 'package:project_k/domain/bet/models/bet_type.model.dart';

class BetItemModel {
  final int id;
  final String image;
  final int headNumber;
  final String name;

  BetTypeModel? betType;

  String get typeDesc {
    switch (betType?.id ?? 0) {
      case 0:
        return name;
      case 1:
        return 'Dezena';
      case 2:
        return 'Centena';
      case 3:
        return 'Milhar';
      default:
        return name;
    }
  }

  List<int> get allNumbers {
    final numberList = <int>[];
    for (int i = headNumber; i < (headNumber + 4); i++) {
      numberList.add(i);
    }
    return numberList;
  }

  BetItemModel({
    required this.id,
    required this.image,
    required this.headNumber,
    required this.name,
    this.betType,
  });
}
