import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class RotatingText extends StatefulWidget {
  const RotatingText({Key? key,}) : super(key: key);

  @override
  State<RotatingText> createState() => _RotatingTextState();
}

class _RotatingTextState extends State<RotatingText> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    if(maxWidth > 1000) {
      return SizedBox(
        height: 20,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          child: AnimatedTextKit(
            onNext: (int index, bool isLast) {
              // print('$index $isLast');
            },
            animatedTexts: [
              TypewriterAnimatedText('Dart & Flutter Developer',
                  speed: const Duration(milliseconds: 200)),
              TypewriterAnimatedText('React JS & React Native Developer',
                  speed: const Duration(milliseconds: 200)),
              TypewriterAnimatedText('HTML, CSS & JS Developer',
                  speed: const Duration(milliseconds: 200)),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 35,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            child: AnimatedTextKit(
              onNext: (int index, bool isLast) {
                // print('$index $isLast');
              },
              animatedTexts: [
                TypewriterAnimatedText('Dart & Flutter Developer',
                    speed: const Duration(milliseconds: 200)),
                TypewriterAnimatedText('React JS & React Native Developer',
                    speed: const Duration(milliseconds: 200)),
                TypewriterAnimatedText('HTML, CSS & JS Developer',
                    speed: const Duration(milliseconds: 200)),
              ],
            ),
          ),
        ),
      );
    }

  }
}
