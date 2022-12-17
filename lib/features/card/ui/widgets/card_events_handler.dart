import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_god/common/utils/position_widget.dart';
import 'package:gh_god/features/card/domain/entities/direction_card.enum.dart';
import 'package:gh_god/features/card/ui/bloc/card_game_bloc.dart';
import 'package:gh_god/features/card/ui/widgets/card_layout.dart';

class CardEventsHanlder extends StatelessWidget {
  const CardEventsHanlder({super.key});

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
          onPointerUp: (event) {
            context
                .read<CardGameBloc>()
                .add(const OnCardGameEvent_CardDirection(
                  directionCard: EDirectionCard.none,
                ));
          },
          child: CardLayout(keyWidget: _key, state: state),
        );
      },
    );
  }
}
