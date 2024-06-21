import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/screens/ThemeNotifier.dart';

class SettingsScreen extends StatelessWidget {

  void _onItemTapped(BuildContext context, int index) {
    // Add navigation logic here based on the selected index
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PageService()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MapScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()),
        );
        break;
      default:
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Choix du Thème'),
            trailing: Switch(
              value: Provider.of<ThemeNotifier>(context).getTheme() == ThemeData.dark(),
              onChanged: (val) {
                Provider.of<ThemeNotifier>(context, listen: false).setTheme(
                  val ? ThemeData.dark() : ThemeData.light(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
