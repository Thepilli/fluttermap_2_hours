import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/class/item_class.dart';
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
            CardWidget(
              box: ItemClass(
                title: "title",
                imagePath: 'images/rocket.png',
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: "travel",
                      imagePath: 'images/travel.png',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: "space",
                      imagePath: 'images/space.png',
                    ),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: "yeah",
                imagePath: 'images/yeah.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
