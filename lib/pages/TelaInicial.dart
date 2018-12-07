import 'package:flutter/material.dart';
import 'package:lobisomen/pages/Configuracao.dart';
import 'package:lobisomen/pages/SobreDesenvolvimento.dart';
import 'package:lobisomen/pages/Tutorial.dart';
import 'package:lobisomen/pages/Teste.dart';

class TelaIncial extends StatefulWidget{
  @override
  State createState() => TelaIncialState();
}

class TelaIncialState extends State<TelaIncial> {
  @override
  Widget build(BuildContext context) {

    Widget buttonSection = Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
              color: Color.fromRGBO(3, 9, 36, 1.0),
              shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: const Color.fromRGBO(255, 248, 200, 1.0), width: 3.0, style: BorderStyle.solid),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Configuracao()),
                );
              },
              child: Text(
                "Jogar",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontFamily: 'SpecialElite',
                   color: Color.fromRGBO(255, 248, 200, 1.0),
                   fontSize: 20.0,
                 )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 83.0),
              color: Color.fromRGBO(3, 9, 36, 1.0),
              shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: const Color.fromRGBO(255, 248, 200, 1.0), width: 3.0, style: BorderStyle.solid),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Tutorial()),
                );
              },
              child: Text(
                "Tutorial",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SpecialElite',
                  color: Color.fromRGBO(255, 248, 200, 1.0),
                  fontSize: 20.0,
                )
              ),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
              color: Color.fromRGBO(3, 9, 36, 1.0),
              shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: const Color.fromRGBO(255, 248, 200, 1.0), width: 3.0, style: BorderStyle.solid),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SobreDesenvolvimento()),
                );
              },
              child: Text(
                "Sobre",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontFamily: 'SpecialElite',
                  color: Color.fromRGBO(255, 248, 200, 1.0),
                  fontSize: 20.0,
                 )
              ),

            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Arcadia',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(3, 9, 36, 1.0),
        body: ListView(
          children: [
            Image.asset(
              'images/logo2.png',
              fit: BoxFit.cover,
            ),
            buttonSection,
          ],
        ),
      ),
    );
  }
}
