import 'package:flutter/material.dart';

class BachelorScreen extends StatefulWidget {
  @override
  _BachelorScreenState createState() => _BachelorScreenState();
}

class _BachelorScreenState extends State<BachelorScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Add navigation logic here if necessary
  }

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
        'Bachelor en Informatique',
        style: TextStyle(fontSize: 20), 
      ),
    ],
  ),
),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image with rounded corners
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/condi.jpg',
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
                    'La filière informatique - Licence',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Le programme de licence en informatique de BIT est conçu pour fournir une base solide en informatique, intégrant à la fois des connaissances théoriques et des compétences pratiques. Ce programme vise à préparer les étudiants à devenir des professionnels compétents et innovants dans le domaine des technologies de l\'information.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Cursus équilibré et formation pratique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le programme de licence couvre des sujets essentiels tels que la programmation, les algorithmes, les bases de données, les réseaux et la sécurité informatique. Les étudiants participent à des travaux pratiques et des projets de groupe qui les aident à appliquer les concepts théoriques dans des situations réelles. Cette approche équilibrée entre théorie et pratique prépare les étudiants à relever les défis techniques de l\'industrie informatique.',
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
                    'BIT encourage les projets collaboratifs et les stages en entreprise pour les étudiants en licence. Ces expériences permettent aux étudiants de travailler en équipe sur des projets réels, de développer des compétences en gestion de projet et de se familiariser avec les pratiques de l\'industrie. Les stages offrent également une opportunité précieuse de réseauter avec des professionnels du secteur et de renforcer leur employabilité à la fin de leurs études.',
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
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Localisation'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Connexion'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
