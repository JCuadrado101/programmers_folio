import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProgrammingIconSvg extends StatelessWidget {
  final String imagePath;
  final String imageURL;
  const ProgrammingIconSvg({
    Key? key,
    required this.imagePath,
    required this.imageURL,
  }) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch ${url}';
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        imagePath,
        semanticsLabel: imageURL,
      ),
      onPressed: () => _launchURL(imageURL),
    );
  }
}
