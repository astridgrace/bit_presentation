import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_4/main.dart';



void main() {
  runApp(MonApp());
}


class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _openMap,
        child: Text('Afficher la localisation'),
      ),
    );
  }

  void _openMap() async {
    // Latitude et longitude du lieu
    double latitude = 12.3701;
    double longitude = -1.5247;

    // URL de Google Maps avec les coordonnées
    String url = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }
}
