import 'package:flutter/material.dart';
import 'package:programmers_folio/widgets/navigation_menu/app_bar.dart';
import 'package:programmers_folio/widgets/navigation_menu/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: NavigationBar(),
      drawer: maxWidth > 700 ? null : const MobileDrawer(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
