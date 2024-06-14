import 'package:flutter/material.dart';

class elecScreen extends StatefulWidget {
  @override
  _elecScreenState createState() => _elecScreenState();
}

class _elecScreenState extends State<elecScreen> {
  int _selectedIndex = 1; // Sélectionnez l'onglet "Menu" par défaut

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Ajoutez la logique de navigation ici si nécessaire
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
                  'assets/condi.jpg', // Remplacez par le chemin de votre image
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20), // Espace entre l'image et la zone de texte
            // Zone de texte
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
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Localisation'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Connexion'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
