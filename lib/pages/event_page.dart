// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

 static var productsList = [
  {
    "nom": "Clavier Gamers",
    "price": "4500",
    "qte": "15",
    "img":"clavier"
  },
  {
    "nom": "Souris USB",
    "price": "1500",
    "qte": "20",
    "img":"souris"
  },
  {
    "nom": "Laptop",
    "price": "180000",
    "qte": "15",
    "img":"laptop"
  }
 ];
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("La liste des produits"),
      ),
      body:  Center(
        child: ListView.builder(
          itemCount: ProductPage.productsList.length,
          itemBuilder: (context, index){

            final product = ProductPage.productsList[index];
            final img = product['img'];
            final qte = product['qte'];
            final prix = product['price'];
            final nom = product['nom'];

            return Card(
              child: Scrollbar(
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
            ),
            );
          },
        ),
      ),
    );
  }

}