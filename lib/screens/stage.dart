import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/screens/settings_screen.dart';
import 'package:flutter_application_4/main.dart';
class StageScreen extends StatefulWidget {
  @override
  _StageScreenState createState() => _StageScreenState();
}

class _StageScreenState extends State<StageScreen> {
  int _selectedIndex = 0;

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
              'Stage',
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
                  'assets/stage.jpg', // Remplacez par le chemin de votre image
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20), // Espace entre l'image et le texte
            // Texte sans images
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Social Stage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Le Social Stage de BIT offre aux étudiants l\'opportunité de s\'engager dans des stages et des projets communautaires, leur permettant ainsi de mettre en pratique leurs compétences tout en contribuant positivement à la société. C\'est une occasion pour les étudiants d\'appliquer leurs connaissances dans des contextes réels et d\'avoir un impact tangible sur la communauté.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Stages sociaux et partenariats communautaires',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'BIT collabore avec des organisations communautaires, des ONG et des entreprises sociales pour offrir aux étudiants des opportunités de stage dans des domaines tels que l\'éducation, la santé, le développement rural et la durabilité environnementale. Ces stages permettent aux étudiants d\'acquérir une expérience pratique, de développer leurs compétences professionnelles et de contribuer de manière significative au bien-être de la communauté.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Projets d\'impact social',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'En plus des stages, le Social Stage propose des projets d\'impact social où les étudiants peuvent collaborer pour concevoir et mettre en œuvre des initiatives visant à résoudre des problèmes sociaux spécifiques. Ces projets permettent aux étudiants d\'appliquer leur créativité et leurs compétences techniques pour créer un changement positif dans la société, tout en renforçant leur sens des responsabilités sociales et leur engagement civique.',
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
