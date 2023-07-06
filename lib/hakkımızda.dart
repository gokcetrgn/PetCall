import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hayvanların için en iyisini istiyoruz. "
          "Onlar kendiler ile yeterince ilgilenemezler fakat sen onların "
          "anne/babası olarak en iyi koşullara gelmesini sağlayabilirsin! PetCall "
          "sana yardımcı olacak.",style: TextStyle(fontWeight: FontWeight.w500),),
    );
  }
}
