class Carrinho {
  Carrinho(this.totalDeItens);

  int totalDeItens;

  void adicionarItemNoTotal() {
    totalDeItens++;
  }

  void removerItemNoTotal() {
    totalDeItens--;
  }
}
