import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginas/pagina_amarela.dart';
import 'package:flutter_application_1/paginas/pagina_azul.dart';
import 'package:flutter_application_1/paginas/pagina_incial.dart';
import 'package:flutter_application_1/paginas/pagina_verde.dart';
import 'package:flutter_application_1/widget/bottomnavigationbar_customizada.dart';
import 'package:flutter_application_1/widget/drawer_customizado.dart';

class PaginaBase extends StatefulWidget {
  const PaginaBase({super.key});

  @override
  State<PaginaBase> createState() => _PaginaBaseState();
}

class _PaginaBaseState extends State<PaginaBase> {
  final controladorPagina = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustomizado(),
      body: PageView(
        controller: controladorPagina,
        children: const [
         PaginaIncial(),
         PaginaAzul(),
         PaginaVerde(),
         PaginaAmarela()
        ],
      ),
      bottomNavigationBar: BottomNavigationBarCustomizado(indiceSelecionado: (int indice) => controladorPagina.jumpToPage(indice)),
    );
  }
}
