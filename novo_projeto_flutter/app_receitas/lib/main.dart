import 'package:app_receitas/views/login_page.dart';
import 'package:app_receitas/views/receitas_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

//criacao do envolucro atalho digite stels depois enter
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //titulo da pagina
      title: 'App de Receitas',

      //nao mostrar tarja de debug
      debugShowCheckedModeBanner: false,

      //criando um mapa de rotas
      routes: {
        //comportamento da navegacao, chama o construtor do LoginPage
        '/login': (context) => LoginPage(),
        '/receitas': (context) => ReceitasPage()
      },
      //informa onde o app vai iniciar, qual tela vem primeiro
      initialRoute: '/login',
    );
  }
}
