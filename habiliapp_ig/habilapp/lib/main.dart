import 'package:flutter/material.dart';
import 'package:pruebas/Classes/perfil.dart';
import 'package:pruebas/pages/home.dart';
import 'package:pruebas/pages/new_skill.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String tag = 'myapp';

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
    MyApp.tag: (context) => MyApp(),
    NewSkill.tag: (context) => NewSkill(),
  };

  final color = const Color(0xff0e3d4d);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'probando',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(hintColor: color),
      home: LoginPage(),
      routes: routes,
    );
  }
}
