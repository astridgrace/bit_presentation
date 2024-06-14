import 'package:flutter/material.dart';

class FemaleScreen extends StatefulWidget {
  @override
  _FemaleScreenState createState() => _FemaleScreenState();
}

class _FemaleScreenState extends State<FemaleScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        'Female empowerment',
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
                  'assets/filiere.jpg', // Remplacez par le chemin de votre image
                  height: 200.0,
                  width: double.infinity,
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
                    'Mise en valeur des femmes dans le domaine des technologies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'BIT s\'engage à encourager la participation des femmes dans les filières technologiques à travers des initiatives variées. L\'institut crée un environnement inclusif et stimulant pour permettre aux étudiantes de développer leurs compétences, de prendre des rôles de leadership et de contribuer activement à l\'innovation technologique.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Programmes de mentorat et bourses d\'études',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'BIT met en place des programmes de mentorat où des professionnelles expérimentées du secteur technologique guident et soutiennent les étudiantes tout au long de leur parcours académique et professionnel. De plus, des bourses d\'études spécifiques sont offertes pour encourager davantage de jeunes femmes à s\'inscrire dans des filières STEM (Science, Technologie, Ingénierie, Mathématiques). Ces initiatives visent à réduire les barrières financières et à offrir un soutien personnalisé pour favoriser la réussite des femmes dans le domaine des technologies.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Ateliers spécialisés et événements de réseautage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'L\'institut organise régulièrement des ateliers spécialisés qui permettent aux étudiantes de se familiariser avec les dernières innovations technologiques et d\'acquérir des compétences pratiques. Ces ateliers sont souvent animés par des experts de l\'industrie et couvrent un large éventail de sujets, allant du développement de logiciels à la cybersécurité. En outre, BIT organise des événements de réseautage qui offrent aux étudiantes l\'opportunité de rencontrer des professionnels du secteur, de partager leurs expériences et de développer des contacts précieux pour leur future carrière.',
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
