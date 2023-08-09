import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _imageIndex = 1;

  void _incrementCounter() {
    setState(() {
      _imageIndex = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        backgroundColor: const Color(0XFF2A4FAB),
      ),
      body: Container(
        color: const Color(0XFF3E95FE),
        child: Center(
          child: TextButton(
            onPressed: () {
              _incrementCounter();
            },
            child: Expanded(
              child: Image.asset("images/ball$_imageIndex.png"),
            ),
          ),
        ),
      ),
    );
  }
}
