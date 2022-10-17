import 'cafe.dart';

class DB {
  static List<Cafe> lista = [
    Cafe(
        id: 1,
        foto:
        "https://www.supremoarabica.com.br/wp-content/uploads/2019/04/10-curisoidades-sobre-o-caf%C3%A9.jpg",
        nome: "Café",
        aux: "Tradicional",
        volume: "150",
        preco: "8,00",
        ingredientes: "Café extra-forte, açucar..."),
    Cafe(
        id: 2,
        foto:
        "https://www.supremoarabica.com.br/wp-content/uploads/2019/04/10-curisoidades-sobre-o-caf%C3%A9.jpg",
        nome: "Café",
        aux: "Tradicional",
        volume: "150",
        preco: "8,00",
        ingredientes: "Café extra-forte, açucar..."),
    Cafe(
        id: 3,
        foto:
        "https://www.supremoarabica.com.br/wp-content/uploads/2019/04/10-curisoidades-sobre-o-caf%C3%A9.jpg",
        nome: "Café",
        aux: "Tradicional",
        volume: "150",
        preco: "8,00",
        ingredientes: "Café extra-forte, açucar..."),
    Cafe(
        id: 4,
        foto:
        "https://www.supremoarabica.com.br/wp-content/uploads/2019/04/10-curisoidades-sobre-o-caf%C3%A9.jpg",
        nome: "Café",
        aux: "Tradicional",
        volume: "150",
        preco: "8,00",
        ingredientes: "Café extra-forte, açucar..."),
    Cafe(
        id: 5,
        foto:
        "https://www.supremoarabica.com.br/wp-content/uploads/2019/04/10-curisoidades-sobre-o-caf%C3%A9.jpg",
        nome: "Café",
        aux: "Tradicional",
        volume: "150",
        preco: "8,00",
        ingredientes: "Café extra-forte, açucar..."),
  ];

  static Future<List<Cafe>> getValues() async {
    await Future.delayed(const Duration(seconds: 4));
    return lista;
  }
}
