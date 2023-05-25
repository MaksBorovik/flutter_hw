import 'package:flutter/material.dart';
import 'package:layout_list/card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter demo',
      home: Scaffold(
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(numberOfCard: index),
            );
          },
        ),
      ),
    );
  }
}
