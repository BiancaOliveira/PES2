import 'package:lobisomen/pages/Class/DadosJogo.dart';
import 'package:lobisomen/pages/Class/Jogadores.dart';
import 'package:lobisomen/pages/Controller/ControllerJogadores.dart';
import 'package:lobisomen/pages/TelaAmanheceu.dart';
import 'package:lobisomen/pages/TelaInicial.dart';
import 'package:lobisomen/pages/TelaIntermediaria.dart';
import 'package:lobisomen/pages/TelaJogador.dart';

class ControllerTelas{

   telaIntermediaria(List<Jogadores> _Jogadores,int i, int numJogadores){
    print(i);
    if(numJogadores > i) {
      return TelaIntermediaria(_Jogadores[i].name, _Jogadores, i, numJogadores);
    }else{
      return TelaAmanheceu();
    }
   }

  TelaJogador telaJogador(List<Jogadores> _Jogadores, int i, int numJogadores) {
    // 1 - Aldeao, 2 - Lobisomem, 3 - caçador, 4- feiticeira e 5 - cartomante

    if (_Jogadores[i].classe == 1) {
      return TelaJogador( _Jogadores[i].name, 'Eai aldeão, volte a dormir!!', 'Aldeão','images/icone_aldeiao.png', _Jogadores, i, numJogadores);
    }
    if(_Jogadores[i].classe == 2){
      return TelaJogador( _Jogadores[i].name, 'Escolha quem você vai atacar esse noite!', 'Lobisomem','images/icone_lobisomen.png', _Jogadores, i, numJogadores);
    }
    if(_Jogadores[i].classe == 4){
      return TelaJogador( _Jogadores[i].name, 'Pretende usar seu poder esta noite?', 'Feiticeira','images/icone_feiticeira.png', _Jogadores, i, numJogadores);
    }
  }

  void dadosJogo(String name, bool feitico) {
      List<DadosJogo> _Jogo = List();
      _Jogo.add(DadosJogo(name, feitico));
      print(_Jogo);
  }

  TelaAmanheceu tela() {
     return TelaAmanheceu();
  }
}
