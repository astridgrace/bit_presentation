import 'package:flutter/material.dart';

class VieScreen extends StatelessWidget {
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
              'Campus',
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
            SizedBox(height: 20), // Espace entre l'image et la zone de texte
            // Zone de texte
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Le campus BIT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Le Burkina Institute of Technology (BIT) dispose d\'un campus moderne et bien équipé, conçu pour offrir un environnement d\'apprentissage optimal et un cadre de vie agréable pour les étudiants. Le campus est un espace dynamique où se conjuguent études, innovation et vie communautaire.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Infrastructures et équipements modernes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le campus de BIT est doté d\'infrastructures modernes incluant des salles de classe équipées des dernières technologies, des laboratoires de pointe pour les travaux pratiques et la recherche, ainsi que des espaces dédiés à l\'apprentissage collaboratif. Les étudiants ont accès à une bibliothèque richement fournie en ressources académiques et numériques, facilitant ainsi leurs recherches et leur apprentissage. De plus, le campus dispose de nombreuses installations sportives et récréatives, permettant aux étudiants de se détendre et de rester actifs.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Vie communautaire et services aux étudiants',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Le campus de BIT favorise une vie communautaire riche et inclusive. De nombreuses activités extracurriculaires, clubs et associations sont à la disposition des étudiants, leur permettant de développer leurs compétences sociales et de leadership. Des services de soutien aux étudiants, tels que des conseillers académiques, des services de santé et des programmes de bien-être, sont également disponibles pour assurer le bien-être et la réussite de chaque étudiant. Le campus offre également des résidences universitaires confortables, permettant aux étudiants de vivre dans un environnement sécurisé et convivial.',
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
