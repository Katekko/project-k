import 'package:project_k/domain/bet/models/bet_item.model.dart';

class BetRepository {
  Future<List<BetItemModel>> loadBetItems() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return [
        BetItemModel(
          id: 1,
          name: 'Sylas',
          image: 'assets/images/sylas.jpg',
          headNumber: 1,
        ),
        BetItemModel(
          id: 2,
          name: 'Katarina',
          image: 'assets/images/katarina.jpg',
          headNumber: 5,
        ),
        BetItemModel(
          id: 3,
          name: 'Yasuo',
          image: 'assets/images/yasuo.jpg',
          headNumber: 9,
        ),
      ];
    } catch (err) {
      rethrow;
    }
  }
}
