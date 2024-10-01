import 'package:flutter/material.dart';

void main() {
  runApp(const Jamesrahhh());
}

class Jamesrahhh extends StatelessWidget {
  const Jamesrahhh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jamesrahhh.dev',
      theme: ThemeData(useMaterial3: true),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Text>[
          Text('@jamesrahhh',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontVariations: <FontVariation>[FontVariation('wght', 700)])),
          Text(
            'coming soon.',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 100,
                decoration: TextDecoration.none,
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontVariations: <FontVariation>[FontVariation('wght', 700)]),
          ),
        ]);
  }
}
