/*
import 'package:flutter/material.dart';
import 'package:lobisomen/pages/TelaIntermediaria.dart';

class AldeaoTeste extends StatefulWidget{
  @override
  State createState() => AldeaoTesteState();
}

class AldeaoTesteState extends State<AldeaoTeste> {
  String name =  'Jogador 1';

  @override
  Widget build(BuildContext context) {

    Widget iconeSection = Container(
      padding: EdgeInsets.only(top: 100.0,bottom: 10.0),
      alignment: Alignment.center,
      child:
      Image.asset(
        'images/icone_aldeiao.png',
        width: 100.0,
        height: 100.0,
        fit: BoxFit.cover,
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
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          )
      ),
    );


    Widget titleSection = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Text(
          'Você pertence a classe aldeão!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SpecialElite',
            fontSize: 25.0,
            color: Color.fromRGBO(246, 249, 174, 1.0),
          )
      ),
    );

    Widget textSection = Container(
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
            'Eai aldeão, volte a dormir!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white70,

            )
        ),
      ),
    );

    Widget nextSection = Container(

        padding: EdgeInsets.only(top: 125.0),
        alignment: Alignment.center,
        child: Column(
          children:[
            IconButton(
              iconSize: 50.0,
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white30,
                size: 70.0,
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => TelaIntermediaria()),
                );
              },
            ),

           Text(
               "Proximo",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontFamily: 'SpecialElite',
                 color: Colors.white70,
                 fontSize: 12.0,
               )
           ),
          ],
        ),
    );


    return MaterialApp(
      title: 'Arcádia',
      home: Scaffold(
        body: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/noite.png"),
              fit: BoxFit.cover,
            ),
          ),
          child:
          ListView(
            children: [
              iconeSection,
              nameSection,
              titleSection,
              textSection,
              nextSection,
            ],
          ),
        ),
      ),
    );

  }
}
*/
