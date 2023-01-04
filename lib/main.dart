
import 'package:flutter/material.dart';
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
          title: const Text("Service d'Inventaire"),
        ),  
        body: const HomePage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          onTap: (index)=>setCurrentIndex(index),
          selectedItemColor: Color.fromARGB(255, 38, 97, 56),
          iconSize: 23,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label:'Acceuil'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label:'Paramètres')
          ]
          ),
        ),
    );
  }
}

