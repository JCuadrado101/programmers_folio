import 'package:flutter/material.dart';

class DrawerNav extends StatefulWidget {
  final String title;
  final String route;
  const DrawerNav({Key? key, required this.title, required this.route}) : super(key: key);

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, widget.route),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: MouseRegion(
          cursor: _hover ? SystemMouseCursors.click : SystemMouseCursors.text,
          child: Text(
            widget.title,
            style: TextStyle(
              color: _hover ? Colors.black12 : Colors.black,
              fontSize: 18,
            ),
          ),
          onHover: (event) {
            setState(() {
              _hover = true;
            });
          },
          onExit: (event) {
            setState(() {
              _hover = false;
            });
          },
        ),
      ),
    );
  }
}
