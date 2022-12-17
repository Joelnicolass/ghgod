import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gh_god/features/card/domain/entities/direction_card.enum.dart';
import 'package:gh_god/features/card/ui/bloc/card_game_bloc.dart';

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
