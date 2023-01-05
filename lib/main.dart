
import 'package:first_flutter_app/pages/addproduct_page.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


int current_index = 0;

setCurrentIndex(int index){
  setState(() { //Pour proceder 0 une actualisation de la page
    current_index = index;
  });
}

@override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: const [
            Text("Service d'Inventaire"),
            Text("Ajout d'un prduit")
          ][current_index],
        ),  
        body: const [
          HomePage(),
          AddPage()
        ][current_index],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: current_index, //l'index de la page courante
          onTap: (index)=>setCurrentIndex(index), //On modifie cet index au click
          
          items:  [
            SalomonBottomBarItem(icon: const Icon(Icons.home), title: const Text("Acceuil"), selectedColor: const Color.fromARGB(255, 38, 97, 56)),
            SalomonBottomBarItem(icon: const Icon(Icons.add), title: const Text("Ajouter"), selectedColor:const Color.fromARGB(255, 131, 117, 39) )
          ]
          ),
        ),
    );
  }
}

