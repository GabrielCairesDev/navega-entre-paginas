import 'package:flutter/material.dart';
import 'package:flutter_application_1/rotas/rotas.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Rota.generatoRoute,
    );
  }
}
