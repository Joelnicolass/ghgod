import 'package:gh_god/features/card/domain/entities/card.dart';

class CardAdapter {
  static CardGame fromJson(Map<String, dynamic> cardInfo) {
    return CardGame(
      id: cardInfo['id'],
      title: cardInfo['title'],
      description: cardInfo['description'],
      image: cardInfo['image'],
      leftText: cardInfo['leftText'],
      rightText: cardInfo['rightText'],
      leftAction: cardInfo['leftAction'],
      rightAction: cardInfo['rightAction'],
      nextCardIdLeft: cardInfo['nextCardIdLeft'],
      nextCardIdRight: cardInfo['nextCardIdRight'],
      cardType: cardInfo['cardType'],
    );
  }
}
