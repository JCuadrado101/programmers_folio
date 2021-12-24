import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(color: Colors.white, height: 400, width: 300),
              ],
            ),
            Column(
              children: const [
                Text(
                  'Who am I?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'I am a self-taught front-end developer based out of Harrisburg, PA with a passive for creating applications and websites.'
                        ' I have a passion for learning and I am always looking to improve my skills. \n\n'
                        'Currently specializing in Flutter and Dart,'
                        ' I build applications for 6 separates platforms at the same time in the same code base. '
                        'If Dart/Flutter doesn\'t meet the requirements, I have the ability to switch to other technologies, '
                        'such as ReactJS, React Native or even basic HTML, CSS and JS \n\n'
                        'As time progresses, I\'m looking to expand my knowledge and eventually build a career in the field.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}
