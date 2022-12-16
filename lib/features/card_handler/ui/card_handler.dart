import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

generateCards(quantity) {
  List<Widget> cards = [];

  for (var i = 0; i < quantity; i++) {
    cards.add(
      Container(
        decoration: BoxDecoration(
          color: i % 2 == 0 ? Colors.red : Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
  return cards;
}

class CardHandler extends StatelessWidget {
  const CardHandler({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TCardController();

    return Listener(
      onPointerMove: (event) {
        //right
        if (event.delta.dx > 0) {
          print('right');
        }

        //left
        if (event.delta.dx < 0) {
          print('left');
        }
      },
      child: TCard(
        cards: generateCards(10),
        controller: controller,
        onForward: (index, info) {
          print('adelante');
        },
        onBack: (index, info) {
          print('atras');
        },
        lockYAxis: true,
        onEnd: () {
          print('fin');
        },
      ),
    );
  }
}
