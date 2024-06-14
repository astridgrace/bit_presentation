import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/informatique.dart';
import 'package:flutter_application_4/screens/electrique.dart';
import 'package:flutter_application_4/screens/mecanique.dart';

class FiliereDescriptionScreen extends StatefulWidget {
  @override
  _FiliereDescriptionScreenState createState() => _FiliereDescriptionScreenState();
}

class _FiliereDescriptionScreenState extends State<FiliereDescriptionScreen> {
  int _selectedIndex = 0; // Initialisation de selectedIndex

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
        'Filières',
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
                      'assets/bitimg.jpg',
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
                    'Le Burkina Institute of Technology (BIT) est un établissement d`\'enseignement supérieur au Burkina Faso, offrant une formation de qualité dans les domaines de la technologie et de l`\'ingénierie. Il propose des filières de Génie Informatique, de Génie Mécanique, de Génie Électrique et de Génie Civil. Ces programmes combinent une solide formation théorique avec des compétences pratiques essentielles. Les étudiants bénéficient de laboratoires bien équipés, de projets pratiques et de stages en entreprise pour acquérir une expérience précieuse. En formant des ingénieurs compétents et innovants, le BIT contribue au développement technologique et économique du Burkina Faso.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/filiere.jpg',
            title: 'Informatique',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => inforScreen()),
              );
            },
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/condi.jpg',
            title: 'Electrique',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => elecScreen()),
              );
            },
          ),
          _buildCard(
            context: context,
            imageUrl: 'assets/campus.jpg',
            title: 'Mecanique',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mecaScreen()),
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
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Localisation'),
          BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Connexion'),
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
