import 'package:flutter/material.dart';
import 'package:gh_god/features/card/ui/bloc/card_game_bloc.dart';
import 'package:gh_god/features/card/ui/widgets/card_header.dart';

class CardLayout extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> _key;
  final CardGameState state;

  const CardLayout({
    Key? key,
    required GlobalKey<State<StatefulWidget>> keyWidget,
    required this.state,
  })  : _key = keyWidget,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ),
            Container()
          ],
        ));
  }
}
