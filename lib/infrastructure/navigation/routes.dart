class Routes {
  static Future<String> get initialRoute async {
    return home;
  }

  static const home = '/home';
  static const chooseMode = '/choose-mode';
  static const confirmBet = '/confirm-bet';
  static const payment = '/payment';
}
