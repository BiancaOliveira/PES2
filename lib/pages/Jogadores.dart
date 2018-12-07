class Jogadores {
  String name;
  int classe;
  bool status;

  Jogadores(this.name, this.classe, this.status);
  @override
  String toString() {
    // TODO: implement toString
    return 'Jogador: $name, classe: $classe, Status: $status \n';
  }
}

