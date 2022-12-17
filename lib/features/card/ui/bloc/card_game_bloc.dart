import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gh_god/features/card/domain/entities/direction_card.enum.dart';

part 'card_game_event.dart';
part 'card_game_state.dart';

class CardGameBloc extends Bloc<CardGameEvent, CardGameState> {
  CardGameBloc() : super(const CardGameState()) {
    on<OnCardGameEvent_CardDirection>(_onCardDirection);
    on<OnCardGameEvent_Selection>(_onCardSelection);
  }

  void _onCardDirection(
    OnCardGameEvent_CardDirection event,
    Emitter<CardGameState> emit,
  ) {
    emit(state.copyWith(directionCard: event.directionCard));
  }

  void _onCardSelection(
    OnCardGameEvent_Selection event,
    Emitter<CardGameState> emit,
  ) {
    emit(state.copyWith(selectionCard: event.selection));
  }
}
