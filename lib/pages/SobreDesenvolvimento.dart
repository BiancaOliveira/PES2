import 'package:flutter/material.dart';

class SobreDesenvolvimento extends StatefulWidget{
  @override
  State createState() => SobreDesenvolvimentoState();
}

class SobreDesenvolvimentoState extends State<SobreDesenvolvimento> {
  @override
  Widget build(BuildContext context) {

    Widget iconeSection = Container(
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
      child: Text(
          'Sobre:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SpecialElite',
            fontSize: 40.0,
            color: Color.fromRGBO(255, 248, 200, 1.0),
          )
      ),
    );

    Widget textSection = Container(
      child: Padding(
        //padding: const EdgeInsets.all(80.0),
        padding: const EdgeInsets.fromLTRB(46.0, 30.0, 46.0, 5.0),
        child: Text(
          'Jogo desenvolvido em conjunto com a diciplina de Processso de '
            'Engenharia de Software II do curso de Ciência da Computação '
            'da Universidade Estadual do Oeste do Paraná, pelos alunos'
            ' André Gustavo, Bianca Oliveira e Gabriela Marim. \n\n'
            'Versão: 1.0',
            textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16.5,
            color: Color.fromRGBO(255, 255, 255, 0.9),
          )
        ),
      ),
    );



    return MaterialApp(
      title: 'Arcádia',
      home: Scaffold(
        body: ListView(
          children: [
            iconeSection,
            titleSection,
            textSection,
          ],
        ),
        backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
      ),
    );
  }
}
