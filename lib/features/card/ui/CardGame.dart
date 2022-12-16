import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/features/card_handler/domain/direction_card.enum.dart';
import 'package:gh_god/features/card_handler/ui/bloc/card_handler_bloc.dart';

class CardGH extends StatelessWidget {
  const CardGH({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardHandlerBloc, CardHandlerState>(
      builder: (_, state) {
        return Container(
          color: state.directionCard == EDirectionCard.none
              ? Colors.red
              : state.directionCard == EDirectionCard.right
                  ? Colors.green
                  : Colors.blue,
          child: Center(
            child: Text(state.directionCard.toString()),
          ),
        );
      },
    );
  }
}
