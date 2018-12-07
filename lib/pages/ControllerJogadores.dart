import 'package:lobisomen/pages/Jogadores.dart';
import 'dart:math';

class ControllerJogadores{
  List<Jogadores> _jogador = List();


  void cliarLista (int numJogadores){
    int i;

    for(i = 0; i < numJogadores; i++ ){
      _jogador.add(Jogadores('Jogador $i ',0, true));
    }
    print('C $_jogador\n');
  }

  print('C $_jogador\n');
  
  void distribuirClasse (int aldeao, int lobo, int cacador, int feiticeira, int cartomante){

    _jogador.shuffle(Random(8));

    print('boi $_jogador');
  }
}