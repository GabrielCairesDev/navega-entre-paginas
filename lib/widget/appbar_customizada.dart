import 'package:flutter/material.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String textoDaBarra;
  final Color corDaBarraA, corDaBarraB;

  const AppBarCustomizada(
      {super.key,
      required this.textoDaBarra,
      required this.corDaBarraA,
      required this.corDaBarraB});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        textoDaBarra,
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [corDaBarraA, corDaBarraB],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
