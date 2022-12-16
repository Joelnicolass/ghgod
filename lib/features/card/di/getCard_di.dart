// file for dependency injection

import 'package:gh_god/features/card/data/services/card_services.dart';
import 'package:gh_god/features/card/domain/repositories/card_repository.dart';
import 'package:gh_god/features/card/domain/usecases/get_card_usecase.dart';

class GetCards {
  late GetCardUsecase useCase;
  late CardRepository _repository;

  GetCards() {
    _repository = CardServicesLocal();
    useCase = GetCardUsecase(_repository);
  }
}
