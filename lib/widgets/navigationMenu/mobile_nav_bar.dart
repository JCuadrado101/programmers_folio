import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:programmers_folio/widgets/buttons/hover_nav.dart';

class MobileNavBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  MobileNavBar({Key? key}) : preferredSize = const Size.fromHeight(60),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Programmers Folio', style: TextStyle(color: Colors.white)),
    );
  }
}
