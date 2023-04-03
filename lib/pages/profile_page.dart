import 'package:flutter/material.dart';
import 'package:fluttermap_2_hours/core/constants.dart';
import 'package:fluttermap_2_hours/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 50,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            title: Text('Flutter mapp'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('info@jiri.com'),
            leading: Icon(Icons.email),
          ),
          ListTile(
            title: Text('jiri.com'),
            leading: Icon(Icons.web),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (isDark) {
              return const Icon(Icons.light_mode);
            } else {
              return const Icon(Icons.dark_mode);
            }
          },
        ),
      ),
    );
  }
}
