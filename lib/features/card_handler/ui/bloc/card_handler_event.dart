// ignore_for_file: camel_case_types

part of 'card_handler_bloc.dart';

abstract class CardHandlerEvent extends Equatable {
  const CardHandlerEvent();

  @override
  List<Object> get props => [];
}

class OnCardHandlerEvent_DirectionCard extends CardHandlerEvent {
  final EDirectionCard directionCard;

  const OnCardHandlerEvent_DirectionCard({required this.directionCard});

  @override
  List<Object> get props => [directionCard];
}
