import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Christmas Tree Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChristmasTreePage(),
    );
  }
}

class ChristmasTreePage extends StatefulWidget {
  @override
  _ChristmasTreePageState createState() => _ChristmasTreePageState();
}

class _ChristmasTreePageState extends State<ChristmasTreePage> {
  Color treeColor = Color.fromARGB(255, 25, 154, 29);
  Color trunkColor = Colors.brown;
  Color esphereColor = Colors.red;
  bool showEmoji = false;
  bool showEsphere = false;
  bool colores = true;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      updateEmoji();
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateEsphere();
    });
  }

  void updateEsphere() {
    setState(() {
      showEsphere = !showEsphere;
      esphereColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  void updateEmoji() {
    setState(() {
      showEmoji = !showEmoji;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '¡Feliz Navidad, Yudy!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  treeColor = Colors.green;
                  trunkColor = Colors.brown;
                });
              },
              child: Container(
                width: 220,
                height: 220,
                child: Stack(
                  children: [
                    for (var i = 40; i <= 200; i += 20)
                      Positioned(
                        top: i.toDouble(),
                        left: (200 - i) / 2,
                        right: (200 - i) / 2,
                        child: Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 50, 118, 52),
                                const Color.fromARGB(255, 50, 116, 50),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),

                    Positioned(
                      top: 1,
                      left: 85,
                      child: RichText(
                        text: TextSpan(
                          text: '⭐',
                          style: TextStyle(fontSize: 40, color: Colors.yellow),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 80,
                      left: 120,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 160,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 130,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 50,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 90,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 70,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 120,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 80,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 50,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 15,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 80,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 150,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 150,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 120,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 30,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 200,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 205,
                      left: 95,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 205,
                      left: 10,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 153,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 148,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 45,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 103,
                      left: 120,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 175,
                      left: 180,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: colores ? treeColor : esphereColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 2,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 19,
                      left: 180,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 20,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 185,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 5,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 170,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 4,
                      left: 150,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 45,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 122, 179, 225)),
                      ),
                    ),
                    // Additional snowflake emojis
                    Positioned(
                      top: 100,
                      left: 100,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 60,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 120,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 180,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    // Additional snowflake emojis
                    Positioned(
                      top: 60,
                      left: 100,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 160,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 50,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 160,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 100,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 50,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 195,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 10,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 87,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 120,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 80,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 30,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 164,
                      child: Text(
                        showEmoji ? '❄️' : '',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 25,
                      child: Text(
                        showEmoji ? '' : '❄️',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 179, 225),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0),
            GestureDetector(
              onTap: () {
                setState(() {
                  trunkColor =
                      trunkColor == Colors.brown ? Colors.red : Colors.brown;
                });
              },
              child: Container(width: 50, height: 80, color: trunkColor),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var color in [
                  Colors.red,
                  Color.fromARGB(255, 57, 132, 194),
                  Colors.green,
                  Colors.yellow,
                  Colors.purple,
                  Colors.orange,
                  Colors.pink,
                ])
                  DecorateButton(
                    color: color,
                    onTap: () {
                      setState(() {
                        treeColor = color;
                        colores = true;
                      });
                    },
                  ),
                DecorateButton(
                  color: Colors.grey,
                  onTap: () {
                    treeColor = esphereColor;
                    colores = false;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DecorateButton extends StatelessWidget {
  final Color color;
  final Function onTap;

  DecorateButton({required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
