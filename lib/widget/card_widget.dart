import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kDouble10),
        child: Column(
          children: [
            SizedBox(height: kDouble5),
            Image.asset(imagePath),
            Text(title,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            Text(description),
            SizedBox(height: kDouble10),
          ],
        ),
      ),
    );
  }
}
