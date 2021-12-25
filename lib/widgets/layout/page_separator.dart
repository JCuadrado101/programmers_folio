import 'package:flutter/material.dart';

class PageSeparator extends StatelessWidget {
  const PageSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10.0
      ),
      child: Divider(
        endIndent: 200,
        indent: 200,
        color: Colors.white54,
      ),
    );
  }
}
