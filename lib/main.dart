import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/core/notifiers.dart';
import 'package:fluttermap_2_hours/pages/home_page.dart';
import 'package:fluttermap_2_hours/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            useMaterial3: true,
            primarySwatch: Colors.blue,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
