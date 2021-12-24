import 'package:flutter/material.dart';

class PageSeparator extends StatelessWidget {
  const PageSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 500
      ),
      child: Divider(
        color: Colors.white54,
      ),
    );
  }
}
