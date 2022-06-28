import 'package:project_k/domain/bet/bet.repository.dart';

class BetRepositoryBinding {
  late BetRepository _betRepository;
  BetRepository get repository => _betRepository;

  BetRepositoryBinding() {
    _betRepository = BetRepository();
  }
}
