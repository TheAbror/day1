import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> restaturants = [
    'Evos',
    'KFC',
    'McDonalds',
    'IN-N-OUT',
  ];

  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'What do you want to eat?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            if (currentIndex != null)
              Text(
                restaturants[currentIndex!],
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.white,
              ),
              onPressed: () {
                randomIndex();
              },
              child: const Text('Pick a restaurant'),
            ),
          ],
        ),
      ),
    );
  }

  void randomIndex() {
    final random = Random();
    final index = random.nextInt(restaturants.length);

    setState(() {
      currentIndex = index;
    });
  }
}
