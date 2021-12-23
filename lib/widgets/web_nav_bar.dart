import 'package:flutter/material.dart';
import 'package:programmers_folio/widgets/buttons/hover_nav.dart';

class WebNavigationBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  WebNavigationBar({Key? key}) : preferredSize = const Size.fromHeight(60),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
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
