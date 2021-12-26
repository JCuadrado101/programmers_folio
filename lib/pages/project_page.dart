import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:programmers_folio/widgets/layout/project_url.dart';
import 'package:programmers_folio/widgets/navigation_menu/programming_icons.dart';
import 'package:programmers_folio/widgets/navigation_menu/programming_icons_images.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
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
                      const ProjectURL(
                        projectImage: 'assets/images/1mark.png',
                        projectURL: 'https://1mark.work',
                        projectImageWidth: 320,
                      ),
                      SizedBox(
                        width: 320,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              ProgrammingIconSvg(
                                imagePath: 'images/flutter.svg',
                                imageURL: 'https://flutter.dev',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/firebase.svg',
                                imageURL: 'https://firebase.flutter.dev/',
                              ),
                              ProgrammingIconImage(
                                imagePath: 'images/rive.jpeg',
                                imageURL: 'https://rive.app/',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/grpc.svg',
                                imageURL: 'https://grpc.io/',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/go.svg',
                                imageURL: 'https://go.dev/',
                              ),
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
                      const ProjectURL(
                        projectImage: 'assets/images/1markSystem.png',
                        projectURL: 'https://1mark.work/#/login',
                        projectImageWidth: 275,
                      ),
                      SizedBox(
                        width: 300,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              ProgrammingIconSvg(
                                  imagePath: 'images/flutter.svg',
                                  imageURL: 'https://flutter.dev',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/firebase.svg',
                                imageURL: 'https://firebase.flutter.dev/',
                              ),
                              ProgrammingIconSvg(
                                  imagePath: 'images/grpc.svg',
                                  imageURL: 'https://grpc.io/',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/go.svg',
                                imageURL: 'https://go.dev/',
                              ),
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
                        'LGMG Mobile Parts',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const ProjectURL(
                        projectImage: 'images/lgmg_logo.png',
                        projectURL: 'https://play.google.com/store/apps/details?id=com.gmail.lgmgapp',
                        projectImageWidth: 175,
                      ),
                      SizedBox(
                        width: 300,
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              ProgrammingIconSvg(
                                imagePath: 'images/flutter.svg',
                                imageURL: 'https://flutter.dev',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/python.svg',
                                imageURL: 'https://www.python.org/',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/grpc.svg',
                                imageURL: 'https://grpc.io/',
                              ),
                              ProgrammingIconSvg(
                                imagePath: 'images/go.svg',
                                imageURL: 'https://go.dev/',
                              ),
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
