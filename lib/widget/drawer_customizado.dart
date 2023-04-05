import 'package:flutter/material.dart';
import 'package:flutter_application_1/rotas/rotas.dart';

class DrawerCustomizado extends StatelessWidget {
  const DrawerCustomizado({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff5bb85f), Color(0xffffe714)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Text(''),
          ),
          ListTile(
            leading: const Icon(Icons.looks_one, color: Colors.blue),
            trailing: const Icon(Icons.arrow_right, color: Colors.blue),
            title: const Text('Página Azul'),
            onTap: () async {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(Rota.paginaAzul);
            },
          ),
          ListTile(
            leading: const Icon(Icons.looks_two, color: Colors.green),
            trailing: const Icon(Icons.arrow_right, color: Colors.green),
            title: const Text('Página Verde'),
            onTap: () async {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(Rota.paginaVerde);
            },
          ),
          ListTile(
            leading: const Icon(Icons.looks_3, color: Colors.yellow),
            trailing: const Icon(Icons.arrow_right, color: Colors.yellow),
            title: const Text('Página Amarela'),
            onTap: () async {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(Rota.paginaAmarela);
            },
          ),
        ],
      ),
    );
  }
}
