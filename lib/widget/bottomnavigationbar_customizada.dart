import 'package:flutter/material.dart';
import 'package:flutter_application_1/rotas/rotas.dart';

class BottomNavigationBarCustomizado extends StatefulWidget {
  final void Function(int indice) indiceSelecionado;
  const BottomNavigationBarCustomizado({super.key, required this.indiceSelecionado});

  @override
  State<BottomNavigationBarCustomizado> createState() => _BottomNavigationBarCustomizadoState();
}

class _BottomNavigationBarCustomizadoState extends State<BottomNavigationBarCustomizado> {
  int indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed,
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Página Inicial',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one, color: Colors.blue),
              label: 'Página Azul',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two, color: Colors.green),
              label: 'Página Verde',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3, color: Colors.yellow),
              label: 'Página Amarela',
          )],
        selectedItemColor: Colors.black,
        currentIndex: indiceAtual,
        onTap: (indice) {
          widget.indiceSelecionado(indice);
          setState(() {
            indiceAtual = indice;
          },);
        },
      );
  }
}