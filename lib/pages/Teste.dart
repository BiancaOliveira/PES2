///*
//import 'package:flutter/material.dart';
//import 'package:lobisomen/pages/TelaJogador.dart';
//import 'package:lobisomen/pages/classes/AldeaoTeste.dart';
//import 'package:lobisomen/pages/classes/Feiticeira.dart';
//import 'package:lobisomen/pages/classes/Lobisomem.dart';
//
//class Teste extends StatefulWidget{
//  @override
//  State createState() => TesteState();
//}
//
//class TesteState extends State<Teste> {
//  @override
//  Widget build(BuildContext context) {
//
//    Widget buttonSection = Container(
//      margin: EdgeInsets.all(10.0),
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          Padding(
//            padding: const EdgeInsets.all(5.0),
//            child: RaisedButton(
//              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
//              color: Color.fromRGBO(3, 9, 36, 1.0),
//              shape:
//              RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(50.0),
//                side: BorderSide(color: const Color.fromRGBO(246, 249, 174, 1.0), width: 3.0, style: BorderStyle.solid),
//              ),
//              onPressed: (){
//                Navigator.of(context).push(
//                  MaterialPageRoute(builder: (_) => Aldeao()),
//                );
//              },
//              child: Text(
//                  "Aldeão",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    fontFamily: 'SpecialElite',
//                    color: Color.fromRGBO(246, 249, 174, 1.0),
//                    fontSize: 20.0,
//                  )
//              ),
//            ),
//          ),
//
//          Padding(
//            padding: const EdgeInsets.all(5.0),
//            child: RaisedButton(
//              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 83.0),
//              color: Color.fromRGBO(3, 9, 36, 1.0),
//              shape:
//              RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(50.0),
//                side: BorderSide(color: const Color.fromRGBO(246, 249, 174, 1.0), width: 3.0, style: BorderStyle.solid),
//              ),
//              onPressed: (){
//                Navigator.of(context).push(
//                  MaterialPageRoute(builder: (_) => Feiticeira()),
//                );
//              },
//              child: Text(
//                  "Feiticeita",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    fontFamily: 'SpecialElite',
//                    color: Color.fromRGBO(246, 249, 174, 1.0),
//                    fontSize: 20.0,
//                  )
//              ),
//
//            ),
//          ),
//
//          Padding(
//            padding: const EdgeInsets.all(5.0),
//            child: RaisedButton(
//              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
//              color: Color.fromRGBO(3, 9, 36, 1.0),
//              shape:
//              RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(50.0),
//                side: BorderSide(color: const Color.fromRGBO(246, 249, 174, 1.0), width: 3.0, style: BorderStyle.solid),
//              ),
//              onPressed: (){
//                Navigator.of(context).push(
//                  MaterialPageRoute(builder: (_) => Lobisomem()),
//                );
//              },
//              child: Text(
//                  "Lobisomem",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                    fontFamily: 'SpecialElite',
//                    color: Color.fromRGBO(246, 249, 174, 1.0),
//                    fontSize: 20.0,
//                  )
//              ),
//
//            ),
//          ),
//        ],
//      ),
//    );
//
//    return MaterialApp(
//      title: 'Arcadia',
//      home: Scaffold(
//        backgroundColor: Color.fromRGBO(3, 9, 36, 1.0),
//        body: ListView(
//          children: [
//            buttonSection,
//          ],
//        ),
//      ),
//    );
//  }
//}*/
