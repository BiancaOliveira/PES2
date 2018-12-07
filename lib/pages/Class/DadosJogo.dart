class DadosJogo {
  String nameMorto;
  bool feitico;

  DadosJogo(this.nameMorto, this.feitico,);
  @override
  String toString() {
    // TODO: implement toString
    return 'Jogador: $nameMorto, Status: $feitico \n';
  }
}
