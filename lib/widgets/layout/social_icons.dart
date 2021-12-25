import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key? key,
  }) : super(key: key);

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch ${url}';
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    if(maxWidth > 1000) {
      return SizedBox(
        width: 400,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _launchURL('https://github.com/JCuadrado101'),
              icon: const Icon(LineIcons.github,
                  color: Colors.white, size: 50),
            ),
            IconButton(
              onPressed: () => _launchURL('https://www.linkedin.com/in/jordan-cuadrado-01b96a105/'),
              icon: const Icon(LineIcons.linkedin,
                  color: Colors.blue, size: 50),
            ),
            IconButton(
              onPressed: () => _launchURL('https://medium.com/@jac59155'),
              icon: const Icon(LineIcons.mediumM,
                  color: Colors.white, size: 50),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: 400,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _launchURL('https://github.com/JCuadrado101'),
              icon: const Icon(LineIcons.github,
                  color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () => _launchURL('https://www.linkedin.com/in/jordan-cuadrado-01b96a105/'),
              icon: const Icon(LineIcons.linkedin,
                  color: Colors.blue, size: 40),
            ),
            IconButton(
              onPressed: () => _launchURL('https://medium.com/@jac59155'),
              icon: const Icon(LineIcons.mediumM,
                  color: Colors.white, size: 40),
            ),
          ],
        ),
      );
    }

  }
}