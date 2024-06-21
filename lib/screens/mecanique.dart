import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/screens/settings_screen.dart';
import 'package:flutter_application_4/main.dart';

class mecaScreen extends StatefulWidget {
  @override
  _mecaScreenState createState() => _mecaScreenState();
}

class _mecaScreenState extends State<mecaScreen> {
  int _selectedIndex = 0; // Sélectionnez l'onglet "Menu" par défaut

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });

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
        MaterialPageRoute(builder: (context) => MapScreen ()),
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
        title: Row(
          children: [
            Image.asset(
              'assets/bit.jpg',
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 10),
            Text(
              'Mécanique',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image avec bords arrondis
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/mecan.jpg', // Remplacez par le chemin de votre image
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20), // Espace entre l'image et la zone de texte
            // Zone de texte
            // Septième point : La filière mécanique
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'La filière mécanique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Le programme de licence en mécanique de BIT est conçu pour former des ingénieurs compétents et innovants, capables de concevoir, analyser et améliorer des systèmes mécaniques complexes. Ce programme met l\'accent sur une formation pratique et théorique robuste, préparant les étudiants à répondre aux défis de l\'industrie moderne.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Cursus complet et formation pratique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le programme de licence en mécanique propose un cursus complet couvrant les fondamentaux de la mécanique, tels que la thermodynamique, la mécanique des fluides, la résistance des matériaux et la conception assistée par ordinateur (CAO). Les étudiants participent à des projets pratiques et des travaux en laboratoire, qui leur permettent de mettre en application les concepts théoriques et de développer des compétences techniques essentielles. Cette approche équilibrée entre théorie et pratique prépare les étudiants à relever les défis techniques dans divers secteurs industriels.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Projets collaboratifs et stages en entreprise',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'BIT encourage fortement les projets collaboratifs et les stages en entreprise pour les étudiants en mécanique. Ces expériences permettent aux étudiants de travailler en équipe sur des projets réels, de développer des compétences en gestion de projet et de se familiariser avec les pratiques de l\'industrie. Les stages offrent également une occasion précieuse de réseauter avec des professionnels du secteur et de renforcer leur employabilité à la fin de leurs études.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 4, 20, 44),
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin), label: 'Localisation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Paramètres'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
