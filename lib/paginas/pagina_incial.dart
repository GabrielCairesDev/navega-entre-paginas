import 'package:flutter/material.dart';
import 'package:flutter_application_1/rotas/rotas.dart';
import 'package:flutter_application_1/widget/appbar_customizada.dart';
import 'package:flutter_application_1/widget/container_customizado.dart';
import 'package:flutter_application_1/widget/drawer_customizado.dart';

class PaginaIncial extends StatelessWidget {
  const PaginaIncial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustomizado(),
      appBar: const AppBarCustomizada(
        textoDaBarra: 'Página Inicial',
        corDaBarraA: Color(0xff5bb85f),
        corDaBarraB: Color(0xffffe714),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            InkWell(
              child: const ContainerCustomizado(
                  texto: 'Página Azul', cor: Colors.blue,
                  ),
              onTap: () => Navigator.of(context).pushNamed(Rota.paginaAzul),
              ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: const ContainerCustomizado(
                  texto: 'Página Verde', cor: Colors.green,
                  ),
              onTap: () => Navigator.of(context).pushNamed(Rota.paginaVerde),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: const ContainerCustomizado(
                  texto: 'Página Amarela', cor: Colors.yellow,
                  ),
              onTap: () => Navigator.of(context).pushNamed(Rota.paginaAmarela),
            ),
            const SizedBox(
              height: 50,
          )],
        ),
      ),
    );
  }
}
