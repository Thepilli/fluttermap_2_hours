import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/class/item_class.dart';
import 'package:fluttermap_2_hours/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(widget.box.title),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.dangerous)),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('This is a snackbar'),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          print('Clicked Undo');
                        },
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.info))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.box.imagePath),
                Wrap(
                  spacing: kDouble10,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 20.0;
                          });
                        },
                        child: Text('Small Title')),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 40.0;
                          });
                        },
                        child: Text('Medium Title')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 60.0;
                          });
                        },
                        child: Text('Large Title')),
                    FilledButton(
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 80.0;
                          });
                        },
                        child: Text('Huge Title')),
                  ],
                ),
                FittedBox(
                  child: Text(widget.box.title,
                      style: TextStyle(
                        fontSize: fontSizeCustom,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const Text(
                  baconDescription,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: kDouble20,
                ),
                const Text(
                  baconDescription,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ));
  }
}
