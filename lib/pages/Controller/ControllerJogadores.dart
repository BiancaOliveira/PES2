import 'package:lobisomen/pages/Class/Jogadores.dart';
import 'dart:math';

class ControllerJogadores{


  List classes (int _Jogadores, int _Aldeao int _Lobo, int _Cacador, int _Feiticeira, int _Cartomante){
    int i, aux = 0, cont = 0;

    List<Jogadores> _Jogador = List();
    for(i = 0; i < _Jogadores; i++ ) {
      _Jogador.add(Jogadores('Jogador $i ', 0, true));
    }
    _Jogador.shuffle();


    while(_Jogadores !=  cont){//1 - Aldeão, 2 - Lobo, 3 - Caçador, 4 - Feiticeira, 5 - Cartomante
      if(_Aldeao > 0 ){
        aux = _Aldeao;
        for(i = 0; i < aux; i++ ) {
          _Jogador[cont].classe = 1;
          _Aldeao--;
          cont++;
        }
      }
      if(_Lobo >0 ){
        aux = _Lobo;
        for(i = 0; i < aux; i++ ) {
          _Jogador[cont].classe = 2;
          _Lobo--;
          cont++;
        }
      }
      if(_Cacador > 0 ){
        aux = _Cacador;
        for(i = 0; i < aux; i++ ) {
          _Jogador[cont].classe = 3;
          _Cacador--;
          cont++;
        }
      }
      if(_Feiticeira >0 ){
        aux = _Feiticeira;
        for(i = 0; i < aux; i++ ) {
          _Jogador[cont].classe = 4;
          _Feiticeira--;
          cont++;
        }
      }
      if(_Cartomante >0 ){
      aux = _Cartomante;
        for(i = 0; i < aux; i++ ) {
          _Jogador[cont].classe = 5;
          _Cartomante--;
          cont++;
        }
      }
    }
    _Jogador.shuffle();
  }

  List embaralhar(List _Jogadores){
    _Jogadores.shuffle();
    return _Jogadores;
  }
}