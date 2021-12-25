import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:programmers_folio/widgets/layout/service_cards.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
          top: maxWidth > 1000 ? 80 : 50,
          bottom: 120
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text('My Services',
                style: GoogleFonts.roboto(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
            ),
          ),
          SizedBox(
            width: 1000,
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 20,
              spacing: 20,
              children: const [
                ServiceCards(
                  icon: Icons.web,
                  backgroundColor: Colors.blue,
                  serviceTitle: 'Web Development',
                  serviceDescription: 'I develop websites that\'ll work and behave the same for most browsers',
                ),
                ServiceCards(
                  icon: LineIcons.mobilePhone,
                  backgroundColor: Colors.blue,
                  serviceTitle: 'Mobile Development',
                  serviceDescription: 'I develop for both iOS and Android',
                ),
                ServiceCards(
                  icon: LineIcons.desktop,
                  backgroundColor: Colors.blue,
                  serviceTitle: 'Windows/Mac Development',
                  serviceDescription: 'I develop for both Windows and MacOS',
                ),
                ServiceCards(
                  icon: LineIcons.spinner,
                  backgroundColor: Colors.blue,
                  serviceTitle: 'Rive Animations',
                  serviceDescription: 'I create Rive animations for most platforms',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
