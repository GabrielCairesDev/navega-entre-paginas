import 'package:flutter/material.dart';
import 'package:flutter_application_1/paginas/pagina_base.dart';
import 'package:flutter_application_1/paginas/pagina_amarela.dart';
import 'package:flutter_application_1/paginas/pagina_azul.dart';
import 'package:flutter_application_1/paginas/pagina_verde.dart';
import 'package:flutter_application_1/paginas/pagina_incial.dart';

class Rota {
  static get paginaBase => "/";
  static get paginaIncial => "/pagina_inicial";
  static get paginaAzul => "/pagina_azul";
  static get paginaVerde => "/pagina_verde";
  static get paginaAmarela => "/pagina_amarela";

  static Route<dynamic> generatoRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const PaginaBase());
      case "/pagina_inicial":
        return MaterialPageRoute(builder: (context) => const PaginaIncial());
      case "/pagina_azul":
        return MaterialPageRoute(builder: (context) => const PaginaAzul());
      case "/pagina_verde":
        return MaterialPageRoute(builder: (context) => const PaginaVerde());
      case "/pagina_amarela":
        return MaterialPageRoute(builder: (context) => const PaginaAmarela());
      default:
        return MaterialPageRoute(builder: (context) => const PaginaBase());
    }
  }
}
