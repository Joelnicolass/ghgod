// file for CardRepository interface

import 'package:gh_god/features/card/domain/entities/card.dart';

abstract class CardRepository {
  Future<CardGame> getCard();
}
