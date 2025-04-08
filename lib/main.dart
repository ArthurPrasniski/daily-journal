import 'package:daily_journal/presentation/screens/article_screen.dart';
import 'package:daily_journal/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import  'presentation/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/main': (context) => const MainScreen(),
        '/article': (context) => const ArticleScreen(),
      },
    );
  }
}

