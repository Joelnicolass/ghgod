import 'package:gh_god/features/card/domain/entities/card_types.dart';
import 'package:gh_god/features/win_conditions/domain/entities/indicators.dart';
import 'package:gh_god/features/win_conditions/domain/entities/win_condition_base.dart';

class CardGame {
  String id;
  String title;
  String description;
  String image;
  String leftText;
  String rightText;
  Map<String, int>? leftAction;
  Map<String, int>? rightAction;
  ECardType? cardType;
  String nextCardIdLeft = '';
  String nextCardIdRight = '';

  CardGame(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.leftText,
      required this.rightText,
      this.leftAction,
      this.rightAction,
      this.cardType,
      required this.nextCardIdLeft,
      required this.nextCardIdRight});
}
