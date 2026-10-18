import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatefulWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Efsel_w_3eesh",
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepPurple,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
      ),
      themeMode: themeMode,
      home: HomePage(
        onToggleTheme: () {
          setState(() {
            themeMode = themeMode == ThemeMode.light
                ? ThemeMode.dark
                : ThemeMode.light;
          });
        },
      ),
    );
  }
}