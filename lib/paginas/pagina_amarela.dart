import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/appbar_customizada.dart';

class PaginaAmarela extends StatelessWidget {
  const PaginaAmarela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomizada(
        textoDaBarra: 'Página Amarela',
        corDaBarraA: Color(0xffffe714),
        corDaBarraB: Color(0xfffff389),
      ),
      body: Container(color: Colors.yellow),
    );
  }
}
