import 'package:flutter/material.dart';
import 'package:lobisomen/pages/Controller/ControllerJogadores.dart';
import 'package:lobisomen/pages/TelaAnoiteceu.dart';
import 'package:lobisomen/pages/TelaIntermediaria.dart';
void main() => runApp(Configuracao());
class Configuracao extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lobisomen",
      theme: ThemeData(),
      home: ConfiguracaoPage(),
    );
  }
}
class ConfiguracaoPage extends StatefulWidget{
  ConfiguracaoPage({ Key key, this.title}) : super(key: key);
  final String title;

  @override
  State createState() => new ConfiguracaoPageState();
}


class ConfiguracaoPageState extends State<ConfiguracaoPage>{
  int _Jogadores = 3, _Lobo = 1, _Aldeao = 1, _Cacador = 0, _Feiticeira = 0, _Cartomante = 0;

  //contadores jogadores
  void _maisJogadores(){
    setState((){
      _Jogadores++;
    });
  }
  void _menosJogadores(){
    setState((){
      _Jogadores--;
    });
  }
  //contadores lobisomen
  void _maisLobo(){
    setState((){
      _Lobo++;
    });
  }
  void _menosLobo(){
    setState((){
      _Lobo--;
    });
  }
  //contadores caçador
  void _maisCacador(){
    setState((){
      _Cacador++;
    });
  }
  void _menosCacador(){
    setState((){
      _Cacador--;
    });
  }
  //contadores Feiticeira
  void _maisFeiticeira(){
    setState((){
      _Feiticeira++;
    });
  }
  void _menosFeiticeira(){
    setState((){
      _Feiticeira--;
    });
  }
  //contadores caçador
  void _maisCartomante(){
    setState((){
      _Cartomante++;
    });
  }
  void _menosCartomante(){
    setState((){
      _Cartomante--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: Text(
            'Configurações:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'SpecialElite',
              fontSize: 40.0,
              color: Color.fromRGBO(246, 249, 174, 1.0),
            )
        ),
      ),
    );

    Widget jogadorSection = Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Padding(
            //padding: const EdgeInsets.all(80.0),
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 10.0, 0.0),
            child: Text(
                'Numero de jogadores:',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.5,
                  color: Colors.white70,
                )
            ),
          ),
          _Jogadores > 3 == true ? //if que verifica o numero minimo de jogadores RF
           new Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            child:
              FloatingActionButton(
                backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                onPressed: _menosJogadores,
                tooltip: 'Diminui',
                child: Icon(Icons.remove_circle_outline),
                mini: true,
              ),
          )

          : new   Padding(//else
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            child:
            FloatingActionButton(
              foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
              backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
              onPressed: null,
              tooltip: 'Diminui',
              child: Icon(Icons.remove_circle_outline, color: Colors.grey),
              mini: true,

            ),
          ),
          Padding(// mostra o numero de jogadores
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            child: Text(
                ' $_Jogadores ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.5,
                  color: Colors.white70,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            child:
            FloatingActionButton(
              backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
              onPressed: _maisJogadores,
              tooltip: 'Aumenta',
              child: Icon(Icons.add_circle_outline),
              mini: true,

            ),
          ),
        ]
      ),
    );
    _Aldeao = _Jogadores - _Lobo - _Cacador - _Feiticeira - _Cartomante;


    Widget classeSection = Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 25.0, 0.0, 20.0),
        child: Text(
          'Classes:',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SpecialElite',
            fontSize: 25.0,
            color: Color.fromRGBO(246, 249, 174, 1.0),
          )
      ),
    ),
    );

    Widget classesSection = Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  //padding: const EdgeInsets.all(80.0),
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 0.0),
                  child: Text(
                      'Aldeão:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(90.0, 10.0, 0.0, 0.0),
                  child: Text(
                      ' $_Aldeao ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white70,
                      )
                  ),
                ),
              ]
            ),
            Row(
              children: [
                Padding(
                  //padding: const EdgeInsets.all(80.0),
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 0.0),
                  child: Text(
                      'Lobisomem: ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Lobo > 1 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _menosLobo,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                )
                    :   //else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                      ' $_Lobo ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Aldeao > 1  == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _maisLobo,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                )
                    ://else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  //padding: const EdgeInsets.all(80.0),
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 65.0, 0.0),
                  child: Text(
                      'Caçador: ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Cacador > 0 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _menosCacador,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                )
                    : //else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                      ' $_Cacador ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                          color: Colors.white70,
                        )
                    ),
                  ),
                _Aldeao > 1 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _maisCacador,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                )
                    : //else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  //padding: const EdgeInsets.all(80.0),
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 60.0, 0.0),
                  child: Text(
                      'Feiticeira: ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Feiticeira > 0 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _menosFeiticeira,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                )
                    : //else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                      ' $_Feiticeira ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Aldeao > 1 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _maisFeiticeira,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                )
                    : //else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  //padding: const EdgeInsets.all(80.0),
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 0.0),
                  child: Text(
                      'Cartomante: ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Cartomante > 0 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _menosCartomante,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                )
                    : //else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Diminui',
                    child: Icon(Icons.remove_circle_outline),
                    mini: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                      ' $_Cartomante ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.white70,
                      )
                  ),
                ),
                _Aldeao > 1 == true ? //if
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    onPressed: _maisCartomante,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                )
                    ://else
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child:
                  FloatingActionButton(
                    backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
                    foregroundColor: Color.fromRGBO(192, 192, 192, 1.0),
                    onPressed: null,
                    tooltip: 'Aumenta',
                    child: Icon(Icons.add_circle_outline),
                    mini: true,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );

    Widget nextSection = Container(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 50.0, 15.0, 30.0),
        child: IconButton(
          iconSize: 50.0,
          tooltip: 'Proxímo',
          icon: Icon(
            Icons.redo,
            color: Colors.white70,
            size: 70.0,
          ),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => TelaAnoiteceu()),
            );
          },
        ),
      ),
    );

    ControllerJogadores().classes(_Jogadores, _Aldeao, _Lobo, _Cacador, _Feiticeira, _Cartomante);

    return MaterialApp(
      title: 'Arcádia',
      home: Scaffold(
        body: ListView(
          children: [
            titleSection,
            jogadorSection,
            classeSection,
            classesSection,
            nextSection,
          ],
        ),
        backgroundColor: Color.fromRGBO(3, 5, 36, 1.0),
      ),
    );

  }


}