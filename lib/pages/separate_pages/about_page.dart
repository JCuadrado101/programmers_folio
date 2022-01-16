import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/navigation_menu/app_bar.dart';
import '../../widgets/navigation_menu/drawer.dart';

class SeparateAboutPage extends StatelessWidget {
  const SeparateAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    if(maxWidth > 1000) {
      return Scaffold(
        appBar: CustomNavBar(),
        drawer: maxWidth > 700 ? null : const MobileDrawer(),
        body: Container(
          color: Theme.of(context).backgroundColor,
          width: maxWidth,
          height: maxHeight,
          child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 80,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'About Me',
                    style: GoogleFonts.roboto(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 400,
                            child: Text(
                              'I am a self-taught front-end developer based out of Harrisburg, PA with a passion for creating applications and websites.'
                                  ' I strive to learn and I am always looking to improve my skills.\n\n'
                                  'Currently specializing in Flutter and Dart,'
                                  ' I build applications for 6 separates platforms at the same time in the same code base. '
                                  'If Dart/Flutter doesn\'t meet the requirements, I have the ability to switch to other technologies, '
                                  'such as ReactJS, React Native or even basic HTML, CSS and JS \n\n'
                                  'As time progresses, I\'m looking to expand my knowledge and eventually build a career in the field.',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: CustomNavBar(),
        drawer: maxWidth > 700 ? null : const MobileDrawer(),
        body: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).backgroundColor,
            width: maxWidth,
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  bottom: 80,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'About Me',
                        style: GoogleFonts.roboto(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                          color: Colors.white,
                          height: 400,
                          width: 300
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        'I am a self-taught front-end developer based out of Harrisburg, PA with a passion for creating applications and websites.'
                            ' I strive to learn and I am always looking to improve my skills. \n\n'
                            'Currently specializing in Flutter and Dart,'
                            ' I build applications for 6 separates platforms at the same time in the same code base. '
                            'If Dart/Flutter doesn\'t meet the requirements, I have the ability to switch to other technologies, '
                            'such as ReactJS, React Native or even basic HTML, CSS and JS \n\n'
                            'As time progresses, I\'m looking to expand my knowledge and eventually build a career in the field.',
                        style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),
      );
    }
  }
}
