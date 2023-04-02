import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/core/constants.dart';
import 'package:fluttermap_2_hours/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CardWidget(
                title: 'rocket',
                description: 'rocket description',
                imagePath: 'images/rocket.png'),
            Row(
              children: const [
                Expanded(
                  child: CardWidget(
                      title: 'rocket',
                      description: 'rocket description',
                      imagePath: 'images/travel.png'),
                ),
                Expanded(
                  child: CardWidget(
                      title: 'rocket',
                      description: 'rocket description',
                      imagePath: 'images/space.png'),
                ),
              ],
            ),
            CardWidget(
                title: 'rocket',
                description: 'rocket description',
                imagePath: 'images/yeah.png'),
          ],
        ),
      ),
    );
  }
}
