import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/female.dart';
import 'package:flutter_application_4/screens/stage.dart';
import 'package:flutter_application_4/screens/accelerator.dart';
import 'package:flutter_application_4/screens/workshop.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/screens/settings_screen.dart';
import 'package:flutter_application_4/main.dart';

class SocialScreen extends StatefulWidget {
  @override
  _SocialScreenState createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
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
          MaterialPageRoute(builder: (context) => MapScreen()),
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
              'Activités extrascolaires',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            color: Colors.grey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/bit2.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Bienvenue à Burkina Institute of Technology',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Le Burkina Institute of Technology (BIT) est une institution d\'enseignement supérieur engagée dans la formation de futurs leaders en technologies de l\'information et de la communication. Son objectif est de fournir une éducation de qualité, intégrant des compétences techniques et professionnelles, pour répondre aux défis technologiques actuels et contribuer au développement régional.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/femalee.jpg',
            title: 'Female empowerment',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FemaleScreen()),
              );
            },
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/ac.jpg',
            title: 'Accelerator',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AcceleratorScreen()),
              );
            },
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/works.jpg',
            title: 'Workshops',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkshopScreen()),
              );
            },
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/intership.jpg',
            title: 'Stages',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StageScreen()),
              );
            },
          ),
        ],
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

  Widget _buildCard({
    required BuildContext context,
    required String imageUrl,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imageUrl,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              Spacer(),
              Icon(Icons.chevron_right, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
