import 'package:flutter/material.dart';
import 'package:layout_list/card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

 @override
 State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 final List<CardInfo> _listOfCards = [];

@override
void initState(){
  generateCardInfo();
  super.initState();
}
void generateCardInfo() {
  for (int i = 0; i < 3; i++) {
    _listOfCards.add(CardInfo(
      title: 'Title $i',
      numberOfCard: i,
    ));
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter demo',
      home: Scaffold(
        body: ListView.builder(
          itemCount: _listOfCards.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomCard(
                cardInfo: _listOfCards[index],
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                     MaterialPageRoute(
                    builder: (_) =>  const AboutPage(
                       cardInfo: _listOfCards[index],
                    ),
                    ),
                  );
                 
                ),
            );
          },
        ),
      ),
    );
  }
}
class CardInfo {
  late final String title;
  final int numberOfCard;
  final String imageUrl;

  CardInfo({
  required this.title,
 required this.numberOfCard,
 this.imageUrl =  'images/lake.jpg',
});
}