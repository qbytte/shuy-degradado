import 'package:flutter/material.dart';
import 'pagina_inicio.dart';

void main() => runApp(App420());

class App420 extends StatelessWidget {
  const App420({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      ),
      home: PaginaInicio(),
    );
  }
}

