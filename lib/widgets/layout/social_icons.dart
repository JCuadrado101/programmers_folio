import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key? key,
  }) : super(key: key);

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
              onPressed: () {},
              icon: const Icon(LineIcons.github,
                  color: Colors.white, size: 50),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.linkedin,
                  color: Colors.blue, size: 50),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.mediumM,
                  color: Colors.white, size: 50),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.facebookF,
                  color: Colors.blue, size: 50),
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
              onPressed: () {},
              icon: const Icon(LineIcons.github,
                  color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.linkedin,
                  color: Colors.blue, size: 40),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.mediumM,
                  color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LineIcons.facebookF,
                  color: Colors.blue, size: 40),
            ),
          ],
        ),
      );
    }

  }
}