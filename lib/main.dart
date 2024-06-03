
import 'package:dictionary_app/Views/splashpage.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: primaryColor,
        textTheme:const TextTheme(bodyMedium: TextStyle(color: Colors.white))
      ),
      home: const MySplashPage(),
    );
  }
}

