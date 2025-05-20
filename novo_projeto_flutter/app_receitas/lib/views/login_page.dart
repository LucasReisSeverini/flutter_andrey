import 'package:app_receitas/components/app_bar_component.dart';
import 'package:flutter/material.dart';

//criando um statfull digite stlful
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //widget pai de telas, possui estrutura base das telas, tela padronizada
    return Scaffold(
      appBar: appBar(),
    );
  }
}