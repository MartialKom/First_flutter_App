import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            SvgPicture.asset(
              "assets/images/ic.svg",
              color: Colors.blue,
            ),
            const Text
            (
            "Service de l'inventaire",
              style: TextStyle(
                fontSize: 41,
                fontFamily: 'Poppins'
              ),
            ),

            const Text
            (
            "Consultez la liste de tous les produits en Back-End",
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          
         const Padding(padding: EdgeInsets.only(top: 10)),

          ElevatedButton.icon(
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 59, 116, 88))
            ),
            // ignore: avoid_print
            onPressed: () {
              Navigator.push(
                context, 
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const EventPage()
                )
                );
            }, 
            label: const Text("Afficher les produits",
            style: TextStyle(
              fontSize: 20
            ),
            ),
            icon: const Icon(Icons.call_to_action_outlined),
            )
        ],) 
        );
  }
  
}
