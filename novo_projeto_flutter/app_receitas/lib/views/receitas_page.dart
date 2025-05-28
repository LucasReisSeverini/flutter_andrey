import 'package:app_receitas/components/app_bar_component.dart';
import 'package:app_receitas/controllers/user_controller.dart';
import 'package:flutter/material.dart';

//criando um state full
class ReceitasPage extends StatefulWidget {
  const ReceitasPage({super.key});

  @override
  State<ReceitasPage> createState() => _ReceitasPageState();
}

class _ReceitasPageState extends State<ReceitasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        icone:Icons.receipt,
        titulo: 'App de Receitas'
      ),
      body: Column(
        children: [
          Text('Usuario logado ${UserController.instance.user}'),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Voltar')
          )
        ],
      ),
    );
  }
}