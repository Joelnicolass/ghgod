import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gh_god/features/card/domain/entity/direction_card.enum.dart';

part 'card_handler_event.dart';
part 'card_handler_state.dart';

class CardHandlerBloc extends Bloc<CardHandlerEvent, CardHandlerState> {
  CardHandlerBloc() : super(const CardHandlerState()) {
    //on<CardHandlerEvent>((event, emit) {});
  }
}
