import 'package:flutter/material.dart';
// methode principale
void main(){
  runApp(MonAppli());
}

class  MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magazine", debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

// methode pour homePage
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magazine Infos", style: TextStyle(color: Colors.white),), 
        
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,


        // ajout du bouton de menu
        leading: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.menu, color: Colors.white,)
          ),

        // ajout du bouton actions
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search, color: Colors.white,),
          )
        ],
        
      ),
      body: SingleChildScrollView( 
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                "assets/images/imageM.jpg",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
            const PartieTitre(),
            const PartieTexte(),
            const PartieIcone(),
            const PartieRubrique(),
            SizedBox(height: 20), 
          ],
        ),
      ),

    );
  }
}

// partie titre
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Bienvenue au Magazine Infos", 
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8,),

          Text(
            "Votre magazine numerique, votre source d'inspiration",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
// partie Texte
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: const Text(
        "Magazine Infos est bien plus qu'un simple magazine d'informations. "
        "C'est votre passerelle vers le monde, une source inestimable de connaissances "
        "et d'actualités soigneusement sélectionnées pour vous éclairer sur les enjeux "
        "mondiaux, la culture, la science, et même le divertissement.",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,),
          
      ),
    );
  }
}

// partie icone
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
             child:  Column(
              children:  [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 5),
                Text("TEL", style: TextStyle(color: Colors.pink),),
              ],
            ),
           ),
            
            Container(
              child: Column(
                children: [
                  Icon(Icons.email, color: Colors.pink),
                  SizedBox(height: 5,),
                  Text("MAIL", 
                  style: TextStyle(color: Colors.pink),),
                ],
             ),
            ),
            
            Container(
              child: Column(
                children: [
                  Icon(Icons.share, color: Colors.pink),
                  SizedBox(height: 5),
                  Text("PARTAGE", style: TextStyle(color: Colors.pink),),
                
                ],
             ),
            )
        ],
      ),
    );
  }
}
// partie Rubrique
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/images/magazineInfo.jpg",
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 30,),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/images/imageMag.jpg",
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),

    );
  }
}
