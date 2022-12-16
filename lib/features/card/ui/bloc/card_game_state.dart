part of 'card_game_bloc.dart';

class CardGameState extends Equatable {
  final EDirectionCard directionCard;

  final String title = 'titulo';
  final String description = 'descripcion';
  final String image = '';
  final String leftText = 'decision izq';
  final String rightText = 'decision der';
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
