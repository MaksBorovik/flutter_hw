import 'package:flutter/material.dart';
import 'package:layout_list/main.dart';
class AboutPage extends StatefulWidget {
  final CardInfo cardInfo;

  const AboutPage({Key? key, required this.cardInfo}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
late TextEditingController controller;
late CardInfo cardInfo;

@override
void initState() {
  controller =TextEditingController(text: widget.cardInfo.title);
  widget.cardInfo.title = 'asbasd' ;
  super.initState();
}

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: const Text('Flutter layout demo')),
  body: SafeArea(
    child: Column(
      children: [
        Image.asset(
          'images/lake.jpg',
          width: double.infinity,
          fit: BoxFit.cover,
        )
      ],
    )
    ),
);

  }
}
