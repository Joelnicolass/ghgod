import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/common/utils/position_widget.dart';
import 'package:gh_god/features/card/domain/entity/direction_card.enum.dart';
import 'package:gh_god/features/card/ui/bloc/card_game_bloc.dart';
import 'package:gh_god/features/card_handler/ui/bloc/card_handler_bloc.dart';

class CardGH extends StatelessWidget {
  const CardGH({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey _key = GlobalKey();

    return BlocBuilder<CardGameBloc, CardGameState>(
      builder: (_, state) {
        return Listener(
          onPointerMove: (event) {
            final rotation = PositionWidget.getRotation(_key);

            if (rotation > 0) {
              context
                  .read<CardGameBloc>()
                  .add(const OnCardGameEvent_CardDirection(
                    directionCard: EDirectionCard.right,
                  ));
            }

            if (rotation < 0) {
              context
                  .read<CardGameBloc>()
                  .add(const OnCardGameEvent_CardDirection(
                    directionCard: EDirectionCard.left,
                  ));
            }
          },
          child: Container(
            key: _key,
            color: state.directionCard == EDirectionCard.none
                ? Colors.red
                : state.directionCard == EDirectionCard.right
                    ? Colors.green
                    : Colors.blue,
            child: Center(
              child: Text(state.directionCard.toString()),
            ),
          ),
        );
      },
    );
  }
}
