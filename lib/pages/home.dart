import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Image(image: NetworkImage('https://media.discordapp.net/attachments/1100530223231021066/1174095616465453136/image.png?ex=66c45f00&is=66c30d80&hm=8d3c1bdf367b7c6b09102263a3194ec2167117276db8f3b28804e9a5d2aa4b55&=&format=webp&quality=lossless'))));
  }
}
