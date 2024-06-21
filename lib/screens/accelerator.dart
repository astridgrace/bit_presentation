import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/screens/settings_screen.dart';
import 'package:flutter_application_4/main.dart';

class AcceleratorScreen extends StatefulWidget {
  @override
  _AcceleratorScreenState createState() => _AcceleratorScreenState();
}

class _AcceleratorScreenState extends State<AcceleratorScreen> {
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
              'Accelerator',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/acce.jpg',
                  height: 200.0,
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
                    'Social Accelerator',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'BIT développe le programme "Social Accelerator" pour soutenir les initiatives entrepreneuriales et sociales des étudiants. Ce programme vise à fournir les ressources et les opportunités nécessaires pour transformer des idées innovantes en projets concrets, ayant un impact positif sur la communauté.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Incubation et mentorat',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le Social Accelerator de BIT offre un espace d\'incubation où les étudiants peuvent développer leurs projets en bénéficiant de l\'expertise de mentors expérimentés. Ces mentors apportent un soutien personnalisé, guidant les participants dans la structuration de leurs idées, la gestion de leurs projets et la recherche de financements. L\'incubation inclut également des sessions de formation en entrepreneuriat et en gestion de projets, visant à renforcer les compétences des étudiants et à maximiser leur impact.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Accès aux ressources et opportunités de financement',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Grâce au Social Accelerator, les étudiants ont accès à un large éventail de ressources, y compris des espaces de travail collaboratifs, des outils technologiques avancés et des réseaux de partenaires industriels. Le programme facilite également l\'accès aux opportunités de financement par le biais de concours de pitch, de subventions et de partenariats avec des investisseurs. En offrant ces ressources, BIT encourage les étudiants à concrétiser leurs idées et à lancer des projets qui répondent aux défis sociaux et économiques locaux.',
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
          BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: 'Localisation'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Paramètres'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
