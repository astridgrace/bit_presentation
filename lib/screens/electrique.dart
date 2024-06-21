import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/screens/settings_screen.dart';
import 'package:flutter_application_4/main.dart';
class ElecScreen extends StatefulWidget {
  @override
  _ElecScreenState createState() => _ElecScreenState();
}

class _ElecScreenState extends State<ElecScreen> {
  int _selectedIndex = 1; // Sélectionnez l'onglet "Menu" par défaut

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
              'Génie électrique',
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
                  'assets/EE1.jpg',
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'La filière électrique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'La filière électrique de BIT offre des programmes complets pour former des ingénieurs électriciens capables de concevoir, développer et maintenir des systèmes électriques et électroniques avancés. Ce programme vise à fournir aux étudiants une solide formation théorique complétée par des expériences pratiques.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Programme de Licence en Génie Électrique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le programme de licence en génie électrique couvre un large éventail de sujets, y compris les circuits électriques, l\'électronique, les systèmes de puissance et les machines électriques. Les étudiants bénéficient d\'un apprentissage pratique à travers des laboratoires bien équipés et des projets de conception, qui leur permettent d\'appliquer les concepts théoriques à des situations réelles. En outre, le programme met l\'accent sur le développement des compétences en résolution de problèmes et en innovation, préparant les étudiants à relever les défis techniques de l\'industrie électrique.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Recherche appliquée et stages professionnels',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le BIT encourage la recherche appliquée dans le domaine électrique, permettant aux étudiants de participer à des projets innovants qui répondent aux besoins actuels et futurs de l\'industrie. Les étudiants ont également l\'opportunité de réaliser des stages professionnels, leur offrant une expérience précieuse en milieu de travail. Ces stages permettent aux étudiants d\'acquérir des compétences pratiques, de se familiariser avec les normes industrielles et de développer un réseau de contacts professionnels, facilitant ainsi leur transition vers le marché du travail après l\'obtention de leur diplôme.',
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
