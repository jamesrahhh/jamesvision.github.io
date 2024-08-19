import 'package:flutter/material.dart';
import 'package:jamesrahhhgithubio/pages/home.dart';

void main() {
  runApp(const JamesrahhhGithubIo());
}

class JamesrahhhGithubIo extends StatelessWidget {
  const JamesrahhhGithubIo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
