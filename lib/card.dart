import 'package:flutter/material.dart';
import 'package:layout_list/about.dart';
import 'main.dart';


class CustomCard extends StatelessWidget {
  final CardInfo cardInfo;

  const CustomCard({
    Key? key, 
  required this.numberOfCard, 
  }) : super(key: key);

  


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
            cardInfo.imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black54,
            ),
            child: Center(
              child: Text(
                '# ${cardInfo.numberOfCard}',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 16,
          right: 16,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: (_) =>  const AboutPage(),
                    ),
                    );
            },
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Colors.black54,

              ),
              child: Column(
                children: [
                  Text(
                    cardInfo.title,
                    style: const TextStyle(color: Colors.white, fontSize: 32),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
