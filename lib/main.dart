import 'package:flutter/material.dart';
import 'package:programmers_folio/pages/separate_pages/about_page.dart';
import 'package:programmers_folio/pages/separate_pages/project_page.dart';
import 'package:programmers_folio/pages/separate_pages/service_page.dart';
import 'package:programmers_folio/widgets/global/no_transitions_on_web.dart';
import 'package:programmers_folio/widgets/provider/home_image.dart';
import 'package:provider/provider.dart';
import 'package:programmers_folio/pages/whole_web_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeImage()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black87,
          toolbarHeight: 70
        ),
        fontFamily: 'Roboto',
        backgroundColor: Colors.black87,
        primarySwatch: Colors.blue,
        pageTransitionsTheme: NoTransitionsOnWeb()
      ),
      home: const WholeWebPage(),
      routes: {
        '/home': (context) => const  WholeWebPage(),
        '/about': (context) => const  SeparateAboutPage(),
        '/service': (context) => const  SeparateServicePage(),
        '/projects': (context) => const  SeparateProjectPage(),
      },
    );
  }
}