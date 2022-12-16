import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gh_god/features/card_handler/domain/direction_card.enum.dart';

part 'card_handler_event.dart';
part 'card_handler_state.dart';

class CardHandlerBloc extends Bloc<CardHandlerEvent, CardHandlerState> {
  CardHandlerBloc() : super(const CardHandlerState()) {
    on<OnCardHandlerEvent_DirectionCard>(_onDirectionCard);
  }

  void _onDirectionCard(
      OnCardHandlerEvent_DirectionCard event, Emitter<CardHandlerState> emit) {
    emit(state.copyWith(
      directionCard: event.directionCard,
    ));
  }
}
