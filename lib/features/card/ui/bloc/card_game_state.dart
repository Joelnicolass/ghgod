part of 'card_game_bloc.dart';

class CardGameState extends Equatable {
  final EDirectionCard directionCard;

  const CardGameState({
    this.directionCard = EDirectionCard.none,
  });

  CardGameState copyWith({
    EDirectionCard? directionCard,
  }) {
    return CardGameState(
      directionCard: directionCard ?? this.directionCard,
    );
  }

  @override
  List<Object> get props => [directionCard];
}
