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
            final direction = _evaluateDirection(rotation);
            _blocEvents(context, direction, state.directionCard);

            return;
          },
          onPointerUp: (event) {
            context
                .read<CardGameBloc>()
                .add(const OnCardGameEvent_CardDirection(
                  directionCard: EDirectionCard.none,
                ));

            return;
          },
          child: CardLayout(keyWidget: _key, state: state),
        );
      },
    );
  }
}

EDirectionCard _evaluateDirection(double rotation) {
  if (rotation > 0) {
    return EDirectionCard.right;
  }

  if (rotation < 0) {
    return EDirectionCard.left;
  }

  return EDirectionCard.none;
}

void _blocEvents(BuildContext context, EDirectionCard direction,
    EDirectionCard previousDirection) {
  if (previousDirection == direction) {
    return;
  }

  context.read<CardGameBloc>().add(OnCardGameEvent_CardDirection(
        directionCard: direction,
      ));

  context
      .read<CardGameBloc>()
      .add(OnCardGameEvent_Selection(selection: direction));

  return;
}
