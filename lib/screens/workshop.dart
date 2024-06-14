import 'package:flutter/material.dart';

class WorkshopScreen extends StatelessWidget {
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
              'Workshop',
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
                  'assets/condi.jpg', // Chemin de votre image
                  height: 200.0,
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
                    'Social Workshop',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Le Social Workshop de BIT est un espace dédié à l\'innovation sociale et à l\'entrepreneuriat. C\'est un lieu où les étudiants peuvent collaborer, échanger des idées et développer des projets ayant un impact positif sur la société et la communauté.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Incubation de projets sociaux',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le Social Workshop offre un soutien à la création et au développement de projets sociaux. Les étudiants bénéficient de ressources, de conseils et de mentorat pour transformer leurs idées en initiatives concrètes. Des ateliers et des formations sont également proposés pour renforcer les compétences en entrepreneuriat et en gestion de projet.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Collaboration interdisciplinaire',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le Social Workshop encourage la collaboration entre étudiants de différentes filières, favorisant ainsi des approches innovantes et holistiques pour résoudre des problèmes sociaux. Les équipes interdisciplinaires travaillent ensemble sur des projets qui intègrent des perspectives variées et complémentaires, permettant ainsi de proposer des solutions plus efficaces et durables.',
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
      ),
    );
  }
}
