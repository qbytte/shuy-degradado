import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tarjeta_reusasble.dart';
import 'icono_contenido.dart';

const alturaContenedorAbajo = 80.0;
const colorActivo = Color(0xFF1D1E33);
const colorInactivo = Color(0xFFFA8072);
const colorContenedorAbajo = Color(0xFFFA8072);

enum Genero {hombre, mujer}

Genero generoElegido = Genero.mujer;

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({super.key});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  Color colorTarjetaMujer = colorInactivo;
  Color colorTarjetaHombre = colorInactivo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculadora IMC"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: TarjetaReusable(
                      colorido: generoElegido == Genero.hombre ? colorActivo : colorInactivo,
                      tarjetaChild: IconoContenido(
                        icono: FontAwesomeIcons.mars,
                        etiqueta: "Hombre",
                      ),
                      alPresionar: () {
                        setState(() {
                          generoElegido = Genero.hombre;
                        });
                      },
                    )),
                Expanded(
                    child: TarjetaReusable(
                      colorido: generoElegido == Genero.mujer ? colorActivo : colorInactivo,
                      tarjetaChild: IconoContenido(
                        icono: FontAwesomeIcons.venus,
                        etiqueta: "Hombre",
                      ),
                      alPresionar: () {
                        setState(() {
                          generoElegido = Genero.mujer;
                        });
                      },
                    )),
              ],
            )),
            Expanded(
                child: TarjetaReusable(
                  alPresionar: (){},
              colorido: Color(0xFFFF00FF),
              tarjetaChild: const Column(
                children: [
                  Icon(
                    FontAwesomeIcons.venus,
                    size: 70.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Txt",
                    style: TextStyle(color: Color(0xFF8D8E9D)),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: TarjetaReusable(
                      alPresionar: (){},
                  colorido: Color(0xFFFA8072),
                  tarjetaChild: const Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 70.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Txt",
                        style: TextStyle(color: Color(0xFF8D8E9D)),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: TarjetaReusable(
                      alPresionar: (){},
                  colorido: Color(0xFFFA8072),
                  tarjetaChild: const Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 70.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Txt",
                        style: TextStyle(color: Color(0xFF8D8E9D)),
                      )
                    ],
                  ),
                )),
              ],
            )),
            Container(
              color: colorContenedorAbajo,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: alturaContenedorAbajo,
            )
          ],
        ));
  }
}
