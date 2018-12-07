import 'package:flutter/material.dart';
import 'package:lobisomen/pages/Class/Jogadores.dart';
import 'package:lobisomen/pages/Controller/ControllerTelas.dart';

class TelaAmanheceu extends StatefulWidget{


  @override
  State createState() => TelaAmanheceuState();
}

class TelaAmanheceuState extends State<TelaAmanheceu> {

  @override
  Widget build(BuildContext context) {


    Widget titleSection = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 50.0, top: 200.0),
      child: Text(
          'Amanheceu',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SpecialElite',
            fontSize: 40.0,
            color: Color.fromRGBO(255, 248, 200, 1.0),
          )
      ),
    );

    Widget nameSection = Container(
      padding: EdgeInsets.all(4.0),
      alignment: Alignment.center,

      child: Text(
          ' Tempo para discussões ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 255, 255, 0.9),
          )
      ),
    );

    Widget nextSection = Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
        child: IconButton(
          iconSize: 50.0,
          tooltip: 'Proxímo',
          icon: Icon(
            Icons.redo,
            color: Color.fromRGBO(255, 255, 255, 0.9),
            size: 70.0,
          ),
          onPressed: (){

//            Navigator.of(context).push(
//              MaterialPageRoute(builder: (_) => ControllerTelas().telaJogador(_Jogadores,i,_NumJogadores)),
//            );
          },
        ),
      ),
    );

    return MaterialApp(
      title: 'Arcádia',
      home: Scaffold(
        body: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/dia.png"),
              fit: BoxFit.cover,
            ),
          ),
          child:
          ListView(
            children: [
              titleSection,
              nameSection,
              nextSection,
            ],
          ),
        ),
      ),
    );
  }
}
