import 'package:flutter/material.dart';
import 'package:lobisomen/pages/Class/Jogadores.dart';
import 'package:lobisomen/pages/Controller/ControllerTelas.dart';


class TelaJogador  extends StatefulWidget{
  String _Name, _Text, _Classe, _Icon;
  List<Jogadores> _Jogadores;
  int i;
  int _NumJogadores;

  TelaJogador(String _Name, String _Text, String _Classe, String _Icon,List _Jogadores, int i, int _NumJogadores){
    this._Name = _Name;
    this._Text = _Text;
    this._Classe = _Classe;
    this._Icon =_Icon;
    this._Jogadores = _Jogadores;
    this.i = i;
    this._NumJogadores =_NumJogadores;
  }
  @override
  State createState() => TelaJogadorState(_Name,_Text,_Classe,_Icon,_Jogadores,i,_NumJogadores);
}

class TelaJogadorState extends State<TelaJogador> {
  String _Name, _Text, _Classe, _Icon;
  List<Jogadores> _Jogadores;
  int i;
  int _NumJogadores;

  TelaJogadorState(String _Name, String _Text, String _Classe, String _Icon,List _Jogadores, int i, int _NumJogadores){
    this._Name = _Name;
    this._Text = _Text;
    this._Classe = _Classe;
    this._Icon =_Icon;
    this._Jogadores = _Jogadores;
    this.i = i;
    this._NumJogadores =_NumJogadores;

  }


  @override
  Widget build(BuildContext context) {
    Widget iconeSection = Container(
      padding: EdgeInsets.only(top: 90.0,bottom: 10.0),
      alignment: Alignment.center,
      child:
      Image.asset(
        _Icon,
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
          _Name,
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
          'Você pertence a classe $_Classe',
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
        child:Text(
            _Text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white70,
            ),
        ),
      ),
    );

    Widget nextSection =
        _Jogadores[i].classe == 1 || _Jogadores[i].classe == 3?
          Container(

            alignment: Alignment.centerRight,
            child: Padding(

              padding: const EdgeInsets.fromLTRB(0.0, 140.0, 15.0, 15.0),
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
                    MaterialPageRoute(builder: (_) => ControllerTelas().telaIntermediaria(_Jogadores, i+1,_NumJogadores)),
                  );
                },
              ),
            ),
          )

        :  _Jogadores[i].classe == 4 || _Jogadores[i].classe == 2?
          Container(
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            alignment: Alignment.center,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 50.0, 55.0, 0.0),
                      child: IconButton(
                          iconSize: 50.0,
                          tooltip: 'Sim',
                          icon: Icon(
                            Icons.thumb_up,
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            size: 70.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) =>
                                  ControllerTelas().telaIntermediaria(
                                      _Jogadores, i + 1, _NumJogadores)),
                            );
                            ControllerTelas().dadosJogo('', true);

                          }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55.0, 50.0, 0.0, 0.0),
                      child: IconButton(
                          iconSize: 50.0,
                          tooltip: 'Não',
                          icon: Icon(
                            Icons.thumb_down,
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            size: 70.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) =>
                                  ControllerTelas().telaIntermediaria(
                                      _Jogadores, i + 1, _NumJogadores)),
                            );
                            ControllerTelas().dadosJogo('', false);
                          }
                      ),
                    ),
                  ],
                ),
              ),
          )
            : Text('boi');


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
                    nextSection
                ],
              ),
          ),
        ),
      );

  }
}
