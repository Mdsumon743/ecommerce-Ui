import 'package:flutter/material.dart';

class Textedit extends StatelessWidget {
  final String tittle;
  final Color color;

  final double size;
  final FontWeight fontWeight;
  const Textedit(
      {super.key,
      required this.tittle,
      required this.color,
      required this.size,
      required this.fontWeight, });

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),maxLines: 2,
    );
  }
}
