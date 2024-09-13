import 'package:dice_app/services/random_service.dart';

/// Business Logika
/// State Management
class HomePageBusinessLogic {
  int firstDice = 6;
  int secondDice = 3;

  void ozgort() {
    firstDice = RandomService.getRandomNumber();
    secondDice = RandomService.getRandomNumber();
  }
}

HomePageBusinessLogic homePageBusinessLogic = HomePageBusinessLogic();
