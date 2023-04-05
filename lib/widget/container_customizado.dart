import 'package:flutter/material.dart';

class ContainerCustomizado extends StatelessWidget {
  final String texto;
  final Color cor;

  const ContainerCustomizado(
      {super.key, required this.texto, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
          color: cor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(0, 2),
            )
          ]),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
