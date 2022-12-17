import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gh_god/features/card/domain/entities/direction_card.enum.dart';

part 'card_swiper_event.dart';
part 'card_swiper_state.dart';

class CardSwiperBloc extends Bloc<CardSwiperEvent, CardSwiperState> {
  CardSwiperBloc() : super(const CardSwiperState()) {
    //on<CardHandlerEvent>((event, emit) {});
  }
}
