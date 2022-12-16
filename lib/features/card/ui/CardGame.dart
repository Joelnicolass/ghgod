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
          onPointerUp: (event) {
            context
                .read<CardGameBloc>()
                .add(const OnCardGameEvent_CardDirection(
                  directionCard: EDirectionCard.none,
                ));
          },
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              key: _key,
              child: Column(
                children: [
                  HeaderCardGame(
                    state: state,
                  )
                ],
              )),
        );
      },
    );
  }
}

class HeaderCardGame extends StatelessWidget {
  final CardGameState state;

  const HeaderCardGame({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          state.directionCard == EDirectionCard.none
              ? state.title
              : state.directionCard == EDirectionCard.left
                  ? state.leftText
                  : state.rightText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
