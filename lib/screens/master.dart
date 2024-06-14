import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
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
        'Master en Informatique',
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
                    'La filière informatique - Master',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Le programme de master en informatique de BIT est destiné à ceux qui souhaitent approfondir leurs connaissances et se spécialiser dans des domaines spécifiques de l\'informatique. Ce programme vise à former des experts capables de contribuer à l\'innovation technologique et de relever des défis complexes dans le domaine des technologies de l\'information.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Cours avancés et spécialisation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le programme de master offre des cours avancés couvrant des sujets tels que l\'intelligence artificielle, la cybersécurité, les systèmes distribués et le développement de logiciels avancés. Les étudiants ont la possibilité de se spécialiser dans des domaines de pointe et de participer à des projets de recherche innovants. Cette spécialisation permet aux étudiants de développer des compétences approfondies et de se préparer à des carrières spécialisées dans le secteur informatique.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Recherche et collaboration industrielle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'BIT met l\'accent sur la recherche appliquée et la collaboration avec l\'industrie pour le programme de master. Les étudiants participent à des projets de recherche qui visent à résoudre des problèmes concrets et à développer de nouvelles technologies. En outre, des partenariats avec des entreprises du secteur permettent aux étudiants de travailler sur des projets en collaboration avec des professionnels de l\'industrie, renforçant ainsi leurs compétences pratiques et leur réseau professionnel.',
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
