import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My Projects',
              style: GoogleFonts.roboto(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              Card(
                child: Column(
                  children: [
                    Text(
                      '1 Mark Website',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Image.asset('images/1mark.png', width: 200),
                    SizedBox(
                      width: 200,
                      child: Container(
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset('images/flutter.svg', height: 30),
                            SvgPicture.asset('images/firebase.svg', height: 30),
                            Image.asset('images/rive.jpeg', height: 30),
                            SvgPicture.asset('images/grpc.svg', height: 30),
                            SvgPicture.asset('images/go.svg', height: 30),
                          ],
                        ),
                      ),
                    )
                  ]
                ),
              ),
              Card(
                child: Column(
                    children: [
                      Text(
                        '1 Mark System',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Image.asset('images/1markSystem.png', width: 170),
                      SizedBox(
                        width: 200,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('images/flutter.svg', height: 30),
                              SvgPicture.asset('images/firebase.svg', height: 30),
                              SvgPicture.asset('images/grpc.svg', height: 30),
                              SvgPicture.asset('images/go.svg', height: 30),
                            ],
                          ),
                        ),
                      )
                    ]
                ),
              ),
              Card(
                child: Column(
                    children: [
                      Text(
                        'LGMG Part System',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Image.asset('images/lgmg_logo.png', width: 110),
                      SizedBox(
                        width: 200,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset('images/flutter.svg', height: 30),
                              SvgPicture.asset('images/python.svg', height: 30),
                              SvgPicture.asset('images/grpc.svg', height: 30),
                              SvgPicture.asset('images/go.svg', height: 30),
                            ],
                          ),
                        ),
                      )
                    ]
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
