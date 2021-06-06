class Catalogo {
  final String nome;
  final String desc;
  final String imagem;

  Catalogo({
    required this.nome,
    required this.desc,
    required this.imagem,
  });
}

List<Catalogo> catalogo = [
  Catalogo(
    nome: "Bolo1",
    desc:
        " Massa:    4 ovos    4 colheres (sopa) de chocolate em pó    2 colheres (sopa) de manteiga    3 xícaras (chá) de farinha de trigo    2 xícaras (chá) de açúcar    2 colheres (sopa) de fermento    1 xícara (chá) de leite    Calda:    2 colheres (sopa) de manteiga    7 colheres (sopa) de chocolate em pó    2 latas de creme de leite com soro    3 colheres (sopa) de açúcar",
    imagem: "assets/cakelogo1.png",
  ),
  Catalogo(
    nome: "Bolo2",
    desc: "Teste2",
    imagem: "assets/cakelogo2.png",
  ),
  Catalogo(
    nome: "Bolo3",
    desc: "Teste3",
    imagem: "assets/cakelogo3.png",
  ),
  Catalogo(
    nome: "Bolo4",
    desc: "Teste4",
    imagem: "assets/cakelogo2.png",
  ),
];
