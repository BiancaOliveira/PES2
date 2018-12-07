import 'package:flutter/material.dart';
import 'package:lobisomen/pages/Class/Jogadores.dart';
import 'package:lobisomen/pages/Controller/ControllerTelas.dart';

class TelaIntermediaria extends StatefulWidget{
  String _Jogador;
  List<Jogadores> _Jogadores;
  int i;
  int _NumJogadores;


  TelaIntermediaria(String _Jogador, List _Jogadores, int i, int _NumJogadores){
    this._Jogador = _Jogador;
    this._Jogadores = _Jogadores;
    this.i = i;
    this._NumJogadores = _NumJogadores;
  }

  @override
  State createState() => TelaIntermediariaState(_Jogador,_Jogadores,i, _NumJogadores);
}

class TelaIntermediariaState extends State<TelaIntermediaria> {
  String _Jogador;
  List<Jogadores> _Jogadores;
  int i;
  int _NumJogadores;

  TelaIntermediariaState(String _Jogador, List _Jogadores, int i, int _NumJogadores){
    this._Jogador = _Jogador;
    this._Jogadores = _Jogadores;
    this.i = i;
    this._NumJogadores = _NumJogadores;
  }


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
      padding: EdgeInsets.only(bottom: 50.0),
      child: Text(
          'Anoiteceu',
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
          ' Passe para o/a $_Jogador',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 255, 255, 0.9),
          )
      ),
    );

    Widget nextSection = Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
        child: IconButton(
          iconSize: 50.0,
          tooltip: 'Proxímo',
          icon: Icon(
            Icons.redo,
            color: Color.fromRGBO(255, 255, 255, 0.9),
            size: 70.0,
          ),
          onPressed: (){
           Navigator.of(context).push(
             MaterialPageRoute(builder: (_) => ControllerTelas().telaJogador(_Jogadores,i,_NumJogadores)),
            );
          },
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
            nameSection,
            nextSection,
          ],
        ),
        backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
      ),
    );
  }
}
