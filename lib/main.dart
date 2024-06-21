import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/filieres.dart';
import 'package:flutter_application_4/screens/social.dart';
import 'package:flutter_application_4/screens/vie.dart';
import 'package:flutter_application_4/screens/condition.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_4/screens/localisation.dart';
import 'package:flutter_application_4/screens/ThemeNotifier.dart';
import 'package:flutter_application_4/screens/settings_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(ThemeData.dark()),
      child: MonApp(),
    ),
  );
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      home: MaHomePage(),
    );
  }
}

class MaHomePage extends StatefulWidget {
  @override
  _MaHomePageState createState() => _MaHomePageState();
}

class _MaHomePageState extends State<MaHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    PageService(),
    MapScreen(),
    SettingsScreen(),
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burkina Institute of Technology'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 4, 20, 44),
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Localisation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Paramètres',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class PageService extends StatelessWidget {
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Impossible de lancer $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Rechercher ici...',
              labelStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(Icons.search, color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
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
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    'assets/bitimg.jpg',
                    'assets/filiere.jpg',
                    'assets/condi.jpg',
                    'assets/campus.jpg',
                    'assets/social.jpg',
                    // 'assets/bit.jpg',
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            i,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
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
                  'Le Burkina Institute of Technology (BIT) est une institution d\'enseignement supérieur engagée dans la formation de futurs leaders en technologies de l\'information et de la communication. Son objectif est de fournir une éducation de qualité, intégrant des compétences techniques et professionnelles, pour répondre aux défis technologiques actuels et contribuer au développement régional. BIT offre des programmes de licence et de master en informatique, génie logiciel, réseaux et télécommunications, avec une approche équilibrée entre la théorie et la pratique. Doté d\'infrastructures modernes et de plateformes de e-learning, l\'institut encourage la recherche et l\'innovation, favorisant ainsi des projets visant à résoudre des problèmes locaux et régionaux.La vie étudiante au BIT est riche en activités extracurriculaires et en initiatives inclusives.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        _buildCard(
          context: context,
          imageUrl: 'assets/filiere.jpg',
          title: 'Filières',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FiliereDescriptionScreen()),
            );
          },
        ),
        _buildCard(
          context: context,
          imageUrl: 'assets/condi.jpg',
          title: 'Condition d\'admission',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConditionScreen()),
            );
          },
        ),
        _buildCard(
          context: context,
          imageUrl: 'assets/campus.jpg',
          title: 'Campus',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VieScreen()),
            );
          },
        ),
        _buildCard(
          context: context,
          imageUrl: 'assets/social.jpg',
          title: 'Activités extrascolaires',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SocialScreen()),
            );
          },
        ),
        _buildCard(
          context: context,
          imageUrl: 'assets/info.jpg',
          title: 'Cliquez ici pour plus d\'infos',
          onTap: () async {
            _launchURL('https://www.bit.bf');
          },
        ),
      ],
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
