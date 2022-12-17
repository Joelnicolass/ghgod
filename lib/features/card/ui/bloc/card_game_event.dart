// ignore_for_file: camel_case_types

part of 'card_game_bloc.dart';

abstract class CardGameEvent extends Equatable {
  const CardGameEvent();

  @override
  List<Object> get props => [];
}

class OnCardGameEvent_CardDirection extends CardGameEvent {
  final EDirectionCard directionCard;

  const OnCardGameEvent_CardDirection({
    required this.directionCard,
  });

  @override
  List<Object> get props => [directionCard];
}

class OnCardGameEvent_Selection extends CardGameEvent {
  final EDirectionCard selection;

  const OnCardGameEvent_Selection({
    required this.selection,
  });

  @override
  List<Object> get props => [selection];
}
