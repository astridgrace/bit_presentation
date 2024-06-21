import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              'assets/bit.jpg',
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 10),
            Text(
              'Menu',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Contenu du menu',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
