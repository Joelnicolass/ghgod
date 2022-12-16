part of 'card_game_bloc.dart';

class CardGameState extends Equatable {
  final EDirectionCard directionCard;

  final String title = '';
  final String description = '';
  final String image = '';
  final String leftText = '';
  final String rightText = '';
  final dynamic leftAction = '';
  final dynamic rightAction = '';
  final dynamic content = '';

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
