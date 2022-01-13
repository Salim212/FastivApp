import 'package:fastivapi/app/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

import 'app/sign_in/log_in.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: Color(0xFFffe140),
        accentColor: Color(0xFFFFFFFF),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF03224c),
        fontFamily: "SanFrancisco",
      ),

      home: LoginScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}




