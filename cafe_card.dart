import 'package:flutter/material.dart';
import 'cafe.dart';

class CafeCard extends StatefulWidget {
  final Cafe cafe;
  const CafeCard({super.key, required this.cafe});

  @override
  State<CafeCard> createState() => _CafeCardState();
}

class _CafeCardState extends State<CafeCard> {
  @override
  Widget build(BuildContext context) {
    return buildContent(widget.cafe);
  }

  Widget buildContent(Cafe cafe) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(image: NetworkImage(cafe.foto))),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  cafe.nome,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                Text(
                  cafe.aux,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text("${cafe.volume}ml",
                      style: const TextStyle(fontSize: 18)),
                ),
                Text("R\$${cafe.preco}", style: const TextStyle(fontSize: 24)),
              ],
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(cafe.ingredientes,
                style:
                const TextStyle(fontSize: 22, fontWeight: FontWeight.w300)),
          ),
        ]),
        buildDivider()
      ],
    );
  }

  buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 25,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Color(0XFFB7794B)),
      ),
    );
  }
}
