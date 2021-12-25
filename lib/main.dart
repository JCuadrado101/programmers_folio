import 'package:flutter/material.dart';
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
      ),
      home: const WholeWebPage(),
    );
  }
}