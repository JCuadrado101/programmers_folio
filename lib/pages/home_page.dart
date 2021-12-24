import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:programmers_folio/widgets/navigation_menu/app_bar.dart';
import 'package:programmers_folio/widgets/navigation_menu/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: NavigationBar(),
      drawer: maxWidth > 700 ? null : const MobileDrawer(),
      body: Container(
          color: Theme.of(context).backgroundColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jordan',
                      style: GoogleFonts.roboto(
                          fontSize: 100,
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                    const Text(
                      'Cuadrado',
                      style: TextStyle(fontSize: 100, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlipCard(
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
                        ),

                        SizedBox(width: 20),
                        SizedBox(
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
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 400,
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(LineIcons.github,
                                color: Colors.white, size: 50),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(LineIcons.linkedin,
                                color: Colors.blue, size: 50),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(LineIcons.mediumM,
                                color: Colors.white, size: 50),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(LineIcons.facebookF,
                                color: Colors.blue, size: 50),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 350,
                  height: 600,
                )
              ],
            ),
          )),
    );
  }
}
