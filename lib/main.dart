import 'package:firstapp/src/present/views/main_screen/main_home.dart';
import 'package:firstapp/src/present/views/main_screen/shared_pref.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 81, 239, 28)),
        useMaterial3: true,
      ),
      home: const SharedPrefScreen(),
    );
  }
}
