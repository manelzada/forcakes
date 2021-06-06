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
    desc: "Teste1",
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
