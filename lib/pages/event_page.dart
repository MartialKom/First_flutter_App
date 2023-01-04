// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {


var productsList = [
  {
    "nom": "Clavier Gamers",
    "price": 4500,
    "qte": 15,
    "img":"clavier"
  },
  {
    "nom": "Souris USB",
    "price": 1500,
    "qte": 20,
    "img":"souris"
  },
  {
    "nom": "Laptop",
    "price": 180000,
    "qte": 15,
    "img":"laptop"
  }
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("La liste des produits"),
      ),
      body:  Center(
        child: ListView.builder(
          itemCount: productsList.length,
          itemBuilder: (context, index){
            
            final product = productsList[index];
            final img = product['img'];
            final qte = product['qte'];
            final prix = product['price'];
            final nom = product['nom'];

            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$img.png"),
                title: Text("$nom -- $prix FCFA"),
                subtitle: Text("Qte: $qte") ,
                trailing:ElevatedButton(
                  style: const ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 59, 116, 88))
                    ),
                  child: const Text("Voir",
                  style: TextStyle(fontSize: 20),),
                  onPressed: () => print("OnClick"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}