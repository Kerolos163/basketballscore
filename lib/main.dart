import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Basketball Score Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _scoreA = 0;
  int _scoreB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$_scoreA",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _scoreA++;
                        });
                      },
                      style:  TextButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20)),
                              
                      child: const Text('+1 Point',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _scoreA += 2;
                        });
                      },
                      style: TextButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Text('+2 Point',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _scoreA += 3;
                        });
                      },
                      style: TextButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Text(
                        '+3 Point',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$_scoreB",
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _scoreB++;
                        });
                      },
                      style: TextButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Text('+1 Point',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _scoreB += 2;
                        });
                      },
                     style: TextButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Text('+2 Point',
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _scoreB += 3;
                        });
                      },
                      style: TextButton.styleFrom(
                          fixedSize: const Size(120, 50),
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Text('+3 Point',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                setState(() {
                  _scoreA = 0;
                  _scoreB = 0;
                });
              },
              style: TextButton.styleFrom(
                  fixedSize: const Size(120, 50),
                  backgroundColor: Colors.grey,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Text('Reset', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
