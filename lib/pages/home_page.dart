import 'package:flutter/material.dart';
import 'package:programmers_folio/widgets/layout/animated_text.dart';
import 'package:programmers_folio/widgets/layout/flip_arrow.dart';
import 'package:programmers_folio/widgets/layout/social_icons.dart';
import 'package:programmers_folio/widgets/navigation_menu/app_bar.dart';
import 'package:programmers_folio/widgets/navigation_menu/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120, bottom: 60),
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
                  children: const [
                    FlipArrow(),
                    SizedBox(width: 20),
                    RotatingText(),
                  ],
                ),
                const SocialIcons(),
              ],
            ),
            const Icon(
              LineIcons.connectDevelop,
              color: Colors.white,
              size: 500,
            ),
          ],
        ),
      ),
    );
  }
}