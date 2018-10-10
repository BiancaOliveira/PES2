import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget{
  @override
  State createState() => TutorialState();
}

class TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {


    Widget titleSection = Container(
        alignment: Alignment.center,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(47.0, 30.0, 47.0, 5.0),
            child: Text(
                'Tutorial:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SpecialElite',
                  fontSize: 40.0,
                  color: Color.fromRGBO(246, 249, 174, 1.0),
                )
            )
        )
    );

    Widget textSection1 = Container(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          child: Text(
            'Aqui vai um texto introduzindo'
                'o cenário geral e bla bla bla',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
            ),
          )
      )
    );

    //Ainda tem que colocar aqui o título CLASSES

    //E transformar os containers em botões, mas farei isso depois

    Widget buttonSection = Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/icone_aldeiao.png',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Aldeião',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            ),
          ),
        ],
      )
    );

    return MaterialApp(
      title: 'Arcadia',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(3, 9, 36, 1.0),
        body: ListView(
          children: [
            titleSection,
            textSection1,
            buttonSection,
          ],
        ),
      ),
    );
  }
}