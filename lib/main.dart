// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            MyKey(
              color: Colors.red,
              noise: '',
            ),
            MyKey(
              color: Colors.orange,
              noise: '',
            ),
            MyKey(
              color: Colors.yellow,
              noise: '',
            ),
            MyKey(
              color: Colors.green,
              noise: '',
            ),
            MyKey(
              color: Colors.teal,
              noise: '',
            ),
            MyKey(
              color: Colors.blue,
              noise: '',
            ),
            MyKey(
              color: Colors.purple,
              noise: '',
            ),
          ],
        ),
      ),
    );
  }
}

class MyKey extends StatefulWidget {
  final Color color;
  final String noise;

  MyKey({Key? key, required this.color, required this.noise}) : super(key: key);

  @override
  State<MyKey> createState() => _MyKeyState();

  AudioPlayer audioPlayer = AudioPlayer();
}

class _MyKeyState extends State<MyKey> {
  final audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          color: widget.color,
        ),
      ),
    );
  }
}
