import 'package:flutter/material.dart';
import 'package:programmers_folio/widgets/layout/animated_text.dart';
import 'package:programmers_folio/widgets/layout/flip_arrow.dart';
import 'package:programmers_folio/widgets/layout/social_icons.dart';
import 'package:programmers_folio/widgets/navigation_menu/app_bar.dart';
import 'package:programmers_folio/widgets/navigation_menu/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:programmers_folio/widgets/provider/home_image.dart';
import 'package:provider/src/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    if(maxWidth > 1000) {
      return Padding(
        padding: const EdgeInsets.only(top: 120, bottom: 60, left: 40, right: 40),
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
                  Text(
                    'Cuadrado',
                    style: GoogleFonts.roboto(
                        fontSize: 100,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      FlipArrow(),
                      SizedBox(width: 20),
                      RotatingText(),
                    ],
                  ),
                  const SocialIcons(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Icon(
                  LineIcons.connectDevelop,
                  color: Colors.white,
                  size: 400,
                ),
              ),
            ],
          ),
        ),
      );
    } else if (maxWidth > 700) {
      return Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 60, left: 40, right: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Jordan',
                style: GoogleFonts.roboto(
                    fontSize: 100,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
              Text(
                'Cuadrado',
                style: GoogleFonts.roboto(
                    fontSize: 100,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FlipArrow(),
                  SizedBox(width: 20),
                  RotatingText(),
                ],
              ),
              const Icon(
                LineIcons.connectDevelop,
                color: Colors.white,
                size: 300,
              ),
              const SocialIcons(),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 60, left: 40, right: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Jordan',
                style: GoogleFonts.roboto(
                    fontSize: 50,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
              Text(
                'Cuadrado',
                style: GoogleFonts.roboto(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FlipArrow(),
                  SizedBox(width: 20),
                  RotatingText(),
                ],
              ),
              const Icon(
                LineIcons.connectDevelop,
                color: Colors.white,
                size: 200,
              ),
              const SocialIcons(),
            ],
          ),
        ),
      );
    }
  }
}