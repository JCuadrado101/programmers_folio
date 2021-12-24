import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FlipArrow extends StatelessWidget {
  const FlipArrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.VERTICAL,
      front: Icon(
        LineIcons.paperPlane,
        color: Colors.green,
        size: 30,
      ),
      back: Icon(
        LineIcons.paperPlane,
        color: Colors.blue,
        size: 30,
      ),
    );
  }
}
