import 'package:flutter/material.dart';
import 'package:programmers_folio/pages/main_page/project_page.dart';
import 'package:programmers_folio/pages/main_page/service_page.dart';
import 'package:programmers_folio/widgets/layout/page_separator.dart';
import 'package:programmers_folio/widgets/navigation_menu/drawer.dart';
import '../widgets/navigation_menu/app_bar.dart';
import 'main_page/about_page.dart';
import 'main_page/home_page.dart';

class WholeWebPage extends StatelessWidget {
  const WholeWebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomNavBar(),
      drawer: maxWidth > 700 ? null : const MobileDrawer(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: const [
            HomePage(),
            PageSeparator(),
            AboutPage(),
            PageSeparator(),
            ServicePage(),
            PageSeparator(),
            ProjectPage(),
            PageSeparator(),
          ],
        ),
      )
    );
  }
}
