// file for CardRepository interface

import 'package:gh_god/features/card/domain/entity/card.dart';

abstract class CardRepository {
  Future<CardGame> getCard();
}
