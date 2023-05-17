import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'ertert'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
      _buildButtonColumn(Colors.green, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Colors.black, Icons.share, 'SHARE'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(0),
          child: Center(
              child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
             Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/lake.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                top: 30,
                right: 16,
                child: Container(
                  height: 70,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  color: Colors.white.withAlpha(175),
                  child: Column(
                    children: [buttonSection],
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 16,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black54,
                    ),
                    child: const Center(
                      child: Text(
                        '#0.',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  left: 7,
                  right: 7,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.black54,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: Center(
              child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
             Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/lake.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                top: 30,
                right: 16,
                child: Container(
                  height: 70,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  color: Colors.white.withAlpha(175),
                  child: Column(
                    children: [buttonSection],
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 16,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black54,
                    ),
                    child: const Center(
                      child: Text(
                        '#1.',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  left: 7,
                  right: 7,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.black54,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: Center(
              child: Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/lake.jpg',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                top: 30,
                right: 16,
                child: Container(
                  height: 70,
                  width: 170,
                  padding: const EdgeInsets.all(10),
                  color: Colors.white.withAlpha(175),
                  child: Column(
                    children: [buttonSection],
                  ),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 16,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black54,
                    ),
                    child: const Center(
                      child: Text(
                        '#2.',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  left: 7,
                  right: 7,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.black54,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*2*/
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
        ),
      ],
    )
   );
  }
}
