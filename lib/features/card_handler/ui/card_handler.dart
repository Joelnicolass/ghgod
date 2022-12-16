import 'package:flutter/material.dart';
import 'package:gh_god/features/card/ui/CardGame.dart';
import 'package:tcard/tcard.dart';

class CardHandler extends StatelessWidget {
  const CardHandler({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TCardController();

    return TCard(
      cards: [CardGH()],
      controller: controller,
      onForward: (index, info) {
        print('adelante');
      },
      lockYAxis: true,
      onEnd: () {
        print('fin');
      },
    );
  }
}
