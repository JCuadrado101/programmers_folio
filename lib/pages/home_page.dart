import 'package:flutter/material.dart';
import 'package:programmers_folio/widgets/navigationMenu/web_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: maxWidth > 1000 ?
              WebNavigationBar() :
              AppBar(
                title: Text('Programmers Folio'),
              ),
      drawer: maxWidth > 1000 ? null : Drawer(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
