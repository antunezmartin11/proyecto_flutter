import 'package:flutter/material.dart';
import 'package:proyecto_flutter/src/pages/login/login_page.dart';
import 'package:proyecto_flutter/src/pages/register/register_page.dart';
import 'package:proyecto_flutter/src/utils/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App Flutter',
      initialRoute: 'login',
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (BuildContext context)=>LoginPage(),
        'register':(BuildContext context)=>RegisterPage()
      },
      theme: ThemeData(
        //fontFamily: 'NimbusSans',
        primaryColor: MyColors.primaryColor
      ),
    );
  }
}
