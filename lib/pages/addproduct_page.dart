import 'package:flutter/cupertino.dart';


class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Text("Page d'ajout"),
    );
  }
}