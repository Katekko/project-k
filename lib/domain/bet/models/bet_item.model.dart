class BetItemModel {
  final int id;
  final String image;
  final int headNumber;
  final String name;

  List<int> get allNumbers {
    final numberList = <int>[];
    for (int i = headNumber; i < (headNumber + 4); i++) {
      numberList.add(i);
    }
    return numberList;
  }

  const BetItemModel({
    required this.id,
    required this.image,
    required this.headNumber,
    required this.name,
  });
}
