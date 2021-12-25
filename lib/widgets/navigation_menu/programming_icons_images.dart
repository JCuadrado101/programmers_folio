import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProgrammingIconImage extends StatelessWidget {
  final String imagePath;
  final String imageURL;
  const ProgrammingIconImage({
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
      icon: Image.asset(
        imagePath,
      ),
      onPressed: () => _launchURL(imageURL),
    );
  }
}
