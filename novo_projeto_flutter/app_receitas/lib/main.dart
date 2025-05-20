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
    );
  }
}
