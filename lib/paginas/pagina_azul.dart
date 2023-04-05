import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/appbar_customizada.dart';

class PaginaAzul extends StatelessWidget {
  const PaginaAzul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomizada(
        textoDaBarra: 'Página Azul',
        corDaBarraA: Color(0xff0a6cba),
        corDaBarraB: Color(0xff2095f3),
      ),
      body: Container(color: Colors.blue),
    );
  }
}
