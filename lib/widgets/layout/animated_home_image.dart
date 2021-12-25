import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AnimatedHomeImage extends StatefulWidget {
  const AnimatedHomeImage({Key? key}) : super(key: key);

  @override
  State<AnimatedHomeImage> createState() => _AnimatedHomeImageState();
}

class _AnimatedHomeImageState extends State<AnimatedHomeImage> {
  final bool _first = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(seconds: 3),
      firstChild:  Icon(LineIcons.connectDevelop, color: Colors.white, size: 500),
      secondChild: Icon(LineIcons.connectDevelop, color: Colors.green, size: 500),
      crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
