import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gh_god/features/card/ui/CardGame.dart';
import 'package:tcard/tcard.dart';

class CardHandler extends StatelessWidget {
  const CardHandler({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TCardController();

    return TCard(
      size: Size(
        MediaQuery.of(context).size.width * 0.8,
        MediaQuery.of(context).size.height * 0.6,
      ),
      cards: [CardGH()],
      controller: controller,
      onForward: (index, info) {
        print('adelante');
      },
      lockYAxis: false,
      onEnd: () {
        print('fin');
      },
    );
  }
}
