import 'package:first_flutter_app/pages/event_page.dart';
import 'package:flutter/material.dart';



class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

String produit = '';
String prix = '';
String qte = '';
final formkey = GlobalKey<FormState>();


validationform(){
  if(formkey.currentState!.validate()){
    formkey.currentState!.save();
    debugPrint(produit);
    debugPrint(prix);
    debugPrint(qte);

  Map<String, String> list = new Map();
  list.putIfAbsent("nom", () => produit);
  list.putIfAbsent("price", () => prix);
  list.putIfAbsent("qte", () => qte);
  list.putIfAbsent("img", () => "laptop");

  ProductPage.productsList.add(list);

  } else {
    debugPrint("erreur...");
  }
}

void change(String a){
  setState(() {
    
    produit = ' $a ';
  });
}

void change_(String b){
  setState(() {
    
    prix = '-- $b FCFA';
  });
}

  @override
  Widget build(BuildContext context) {

    return   Form(
      key: formkey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
    
            Text("$produit $prix", style: const TextStyle(fontSize: 20, color: Colors.green,), textAlign: TextAlign.center,),
    
              TextFormField(
              decoration: const InputDecoration(
                labelText: "Nom",
                hintText: "Entrez le nom du produit",
                icon: Icon(Icons.edit, color: Color.fromARGB(255, 143, 85, 10),)
              ),
              validator: (val)=> val!.length==0 ? "Ce champ est obligatoire":null,
              onSaved: (val)=>produit=val!,
              onChanged: change ,
              keyboardType: TextInputType.text,
            ),
    
           const Padding(padding: EdgeInsets.only(top: 10)),
    
              TextFormField(
              decoration: const InputDecoration(
                labelText: "Prix ",
                hintText: "Entrez le prix Unitaire",
                icon: Icon(Icons.money, color: Color.fromARGB(255, 143, 85, 10),)
              ),
              onChanged: change_ ,
              //onSubmitted: ,
              keyboardType: TextInputType.number,
              validator: (val)=> val!.length==0? "Ce champ est obligatoire":null,
              onSaved: (val)=>prix=val!,
            ),
    
           const Padding(padding: EdgeInsets.only(top: 10)),
    
             TextFormField(
              decoration: const InputDecoration(
                labelText: "Quantite",
                hintText: "Quantité en stock",
                icon: Icon(Icons.production_quantity_limits, color: Color.fromARGB(255, 143, 85, 10),)
              ),
    
              keyboardType: TextInputType.number,
              validator: (val)=> val!.length==0 ? "Ce champ est obligatoire":null,
              onSaved: (val)=>qte=val! ,
            ),

            const Padding(padding: EdgeInsets.only(top: 10)),
    
         ElevatedButton(

          style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 59, 116, 88))
            ),

          onPressed: validationform, 
          child: const Text("Valider",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          )
          )
    
          ],
        ),
      ),
    );
  }
}