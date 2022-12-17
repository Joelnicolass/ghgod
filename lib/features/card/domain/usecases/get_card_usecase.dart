import 'package:gh_god/features/card/domain/entities/card.dart';
import 'package:gh_god/features/card/domain/repositories/card_repository.dart';

class GetCardUsecase {
  final CardRepository _cardRepository;

  GetCardUsecase(this._cardRepository);

  Future<CardGame> call() async {
    return await _cardRepository.getCard();
  }
}
