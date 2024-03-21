import 'package:flutter/material.dart';

const etiquetaTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E00));

class IconoContenido extends StatelessWidget {
  IconoContenido({required this.icono, required this.etiqueta});
  final IconData icono;
  final String etiqueta;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icono,
          size: 70.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          etiqueta,
          style: etiquetaTextStyle,
        )
      ],
    );
  }
}