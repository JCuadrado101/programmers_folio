import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:programmers_folio/widgets/buttons/hover_nav.dart';

class CustomNavBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomNavBar({Key? key}) : preferredSize = const Size.fromHeight(70),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    if(maxWidth > 700) {
      return AppBar(
          title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Image.asset('assets/images/square.png', height: 150),
                ),
                Row(
                  children: const [
                    HoverNav(
                      title: 'Home',
                      route: '/home',
                    ),
                    HoverNav(
                      title: 'About',
                      route: '/about'
                    ),
                    HoverNav(
                      title: 'Services',
                      route: '/service'
                    ),
                    HoverNav(
                      title: 'Projects',
                      route: '/projects'
                    ),
                    // HoverNav(title: 'Contact',),
                  ],
                ),
              ]
          )
      );
    } else {
      return AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Align(
            alignment: Alignment.centerRight,
              child: SvgPicture.asset('images/square.svg', height: 150)),
        )
      );
    }
  }
}
