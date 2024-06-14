import 'package:flutter/material.dart';

class ConditionScreen extends StatefulWidget {
  @override
  _ConditionScreenState createState() => _ConditionScreenState();
}

class _ConditionScreenState extends State<ConditionScreen> {
  int _selectedIndex = 0;

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
              'Condition d\'admission',
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
                    'Ce que nous recherchons',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'L\'esprit d\'entreprise\nIntérêt marqué pour les sciences naturelles, l\'informatique, l\'ingénierie et/ou les affaires et la gestion\nCapacité à reconnaître et à résoudre des problèmes\nLes compétences en anglais\nCompétences informatiques de base\nCompétences en communication, en équipe et en leadership',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nous exigeons l\'excellence académique',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Informatique : BAC (C, D, E ou S)\nGénie Électrique : BAC (C, D, E, S, F2, F3, F4)\nGénie Mécanique : BAC (C, D, E, S, F2, F3, F4)\nOu tout autre diplôme ou certificat jugé équivalent.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Comment postuler pour la deuxième année',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'En cas d\'admission en deuxième année, en plus des dossiers ci-dessus, joindre :\nRelevés de notes de la première année\nDemande d\'admission en deuxième année\nChaque candidat sera soumis à un entretien oral avec accord final d\'inscription.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Documents dont nous avons besoin de votre part',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Une lettre de motivation adressée au Directeur Général\nUne copie légalisée de l\'INCA et/ou un acte de naissance\nUne copie légalisée du diplôme ou certificat de ou de tout autre diplôme jugé équivalent\nUne copie des relevés de notes du BAC\n4 photos d\'identité\nSituation professionnelle des parents ou autres.',
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

