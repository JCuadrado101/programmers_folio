import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class RotatingText extends StatelessWidget {
  const RotatingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText('Dart & Flutter Developer',
                speed: const Duration(milliseconds: 200)),
            TypewriterAnimatedText('React JS & React Native Developer',
                speed: const Duration(milliseconds: 200)),
            TypewriterAnimatedText('Node JS Developer',
                speed: const Duration(milliseconds: 200)),
            TypewriterAnimatedText('HTML, CSS & JS Developer',
                speed: const Duration(milliseconds: 200)),
          ],
        ),
      ),
    );
  }
}
