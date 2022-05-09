import 'package:flutter/material.dart';
import 'package:skateboard_app/screens/welcome/welcome_screen.dart';
import 'package:skateboard_app/utilities/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skate App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBgClr,
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
