import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:programmers_folio/widgets/buttons/hover_nav.dart';

class WebNavigationBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  WebNavigationBar({Key? key}) : preferredSize = const Size.fromHeight(70),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SvgPicture.asset('images/square.svg', height: 150),
            ),
            Row(
              children: const [
                HoverNav(title: 'Home'),
                HoverNav(title: 'About',),
                HoverNav(title: 'Services',),
                HoverNav(title: 'Projects',),
                HoverNav(title: 'Contact',),
            ],
          ),
        ]
      )
    );
  }
}
