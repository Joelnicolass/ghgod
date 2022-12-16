import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/features/card/di/getCard_di.dart';
import 'package:gh_god/features/card/domain/entity/card.dart';
import 'package:gh_god/features/card/ui/CardGame.dart';
import 'package:gh_god/features/card_handler/domain/direction_card.enum.dart';
import 'package:gh_god/features/card_handler/ui/bloc/card_handler_bloc.dart';
import 'package:tcard/tcard.dart';

class CardHandler extends StatelessWidget {
  const CardHandler({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TCardController();

    return BlocBuilder<CardHandlerBloc, CardHandlerState>(
      builder: (_, state) {
        final EDirectionCard directionCard = state.directionCard;

        return Listener(
          onPointerMove: (event) {
            //right
            if (event.delta.dx > 0) {
              context.read<CardHandlerBloc>().add(
                    const OnCardHandlerEvent_DirectionCard(
                      directionCard: EDirectionCard.right,
                    ),
                  );
            }

            //left
            if (event.delta.dx < 0) {
              context.read<CardHandlerBloc>().add(
                    const OnCardHandlerEvent_DirectionCard(
                      directionCard: EDirectionCard.left,
                    ),
                  );
            }
          },
          onPointerUp: (event) {
            context.read<CardHandlerBloc>().add(
                  const OnCardHandlerEvent_DirectionCard(
                    directionCard: EDirectionCard.none,
                  ),
                );
          },
          child: TCard(
            cards: [CardGH()],
            controller: controller,
            onForward: (index, info) {
              print('adelante');
            },
            lockYAxis: true,
            onEnd: () {
              print('fin');
            },
          ),
        );
      },
    );
  }
}
