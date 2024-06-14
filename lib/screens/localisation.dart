import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Fonction pour ouvrir Google Maps à une localisation spécifique
  void _launchGoogleMaps() async {
    // Spécifiez les coordonnées de l'emplacement
    const double latitude = 48.8566;  // Latitude de Paris
    const double longitude = 2.3522;  // Longitude de Paris
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    // Vérifiez si l'URL peut être lancée
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw 'Could not launch $googleMapsUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Launcher'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchGoogleMaps,
          child: Text('Open Google Maps'),
        ),
      ),
    );
  }
}
