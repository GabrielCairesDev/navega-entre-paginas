import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/appbar_customizada.dart';

class PaginaVerde extends StatelessWidget {
  const PaginaVerde({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomizada(
        textoDaBarra: 'Página Verde',
        corDaBarraA: Color(0xff47a44b),
        corDaBarraB: Color(0xff92cf94),
      ),
      body: Container(color: Colors.green),
    );
  }
}
