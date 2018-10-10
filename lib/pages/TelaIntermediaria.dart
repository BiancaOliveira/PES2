import 'package:flutter/material.dart';

class TelaIntermediaria extends StatefulWidget{
  @override
  State createState() => TelaIntermediariaState();
}

class TelaIntermediariaState extends State<TelaIntermediaria> {
  String name =  'Jogador 2';
  @override
  Widget build(BuildContext context) {

    Widget iconeSection = Container(
      padding: EdgeInsets.only(top: 100.0),
      alignment: Alignment.center,
      child:
      Image.asset(
        'images/logo6.png',
        width: 200.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );

    Widget titleSection = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 80.0),
      child: Text(
          'Passe para o proximo jogador',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SpecialElite',
            fontSize: 40.0,
            color: Color.fromRGBO(246, 249, 174, 1.0),
          )
      ),
    );

    Widget nameSection = Container(
      padding: EdgeInsets.all(4.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
      ),
    );

    return MaterialApp(
      title: 'Arcádia',
      home: Scaffold(
        body: ListView(
          children: [
            iconeSection,
            titleSection,
            nameSection,
          ],
        ),
        backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
      ),
    );
  }
}
