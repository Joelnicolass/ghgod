import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'card_game_event.dart';
part 'card_game_state.dart';

class CardGameBloc extends Bloc<CardGameEvent, CardGameState> {
  CardGameBloc() : super(CardGameState()) {
    on<CardGameEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
