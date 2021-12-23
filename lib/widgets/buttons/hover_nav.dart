import 'package:flutter/material.dart';

class HoverNav extends StatefulWidget {
  final String title;
  const HoverNav({Key? key, required this.title}) : super(key: key);

  @override
  State<HoverNav> createState() => _HoverNavState();
}

class _HoverNavState extends State<HoverNav> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MouseRegion(
        cursor: _hover ? SystemMouseCursors.click : SystemMouseCursors.text,
        child: Text(
            widget.title,
          style: TextStyle(
            color: _hover ? Colors.white54 : Colors.white,
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
    );
  }
}
