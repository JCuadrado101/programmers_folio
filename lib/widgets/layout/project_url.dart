import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectURL extends StatelessWidget {
  final String projectURL;
  final String projectImage;
  final double projectImageWidth;
  const ProjectURL({
    Key? key,
    required this.projectURL,
    required this.projectImage,
    required this.projectImageWidth,
  }) : super(key: key);


  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch ${url}';
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () => _launchURL(projectURL),
          child: Image.asset(
              projectImage,
              width: projectImageWidth,
          )
      ),
    );
  }
}