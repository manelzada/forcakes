class ImgList {
  final int position;
  final String nome;
  final String descricao;
  final String iconImage;

  ImgList(
    this.position,
    this.nome,
    this.iconImage,
    this.descricao,
  );
}

List<ImgList> imgs = [
  ImgList(1, 'Bolo de Banana', 'assets/cakelogo1.png',
      'Receita simples, porém deliciosa')
];
