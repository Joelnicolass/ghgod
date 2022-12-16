part of 'card_handler_bloc.dart';

class CardHandlerState extends Equatable {
  final EDirectionCard directionCard;

  const CardHandlerState({
    this.directionCard = EDirectionCard.none,
  });

  CardHandlerState copyWith({
    EDirectionCard? directionCard,
  }) {
    return CardHandlerState(
      directionCard: directionCard ?? this.directionCard,
    );
  }

  @override
  List<Object> get props => [directionCard];
}
