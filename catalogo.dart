import 'package:flutter/material.dart';
import 'cafe.dart';
import 'cafe_card.dart';
import 'db.dart';

class Catalogo extends StatefulWidget {
  const Catalogo({Key? key}) : super(key: key);

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  List<Cafe> listaCafes = DB.lista;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFB7794B),
        shadowColor: Colors.transparent,
        toolbarHeight: 25,
      ),
      backgroundColor: const Color(0XFFF8EFE9),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: listaCafes.length,
                itemBuilder: ((context, index) {
                  return CafeCard(cafe: listaCafes[index]);
                })),
          ),
        ],
      ),
    );
  }
}
