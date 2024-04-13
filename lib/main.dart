import 'package:flutter/material.dart';

import 'screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white)
        ),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      home: const Splash(),
    );
  }
}