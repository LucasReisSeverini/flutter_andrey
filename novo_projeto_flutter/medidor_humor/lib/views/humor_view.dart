import 'package:flutter/material.dart';
import 'package:medidor_humor/componentes/botao_component.dart';
import 'package:medidor_humor/controllers/humor_controller.dart';

class HumorView extends StatefulWidget {
  const HumorView({super.key});

  @override
  State<HumorView> createState() => _HumorViewState();
}

class _HumorViewState extends State<HumorView> {
  final HumorController _humorController = HumorController();

  IconData? _obterIcone(String status) {
    switch (status) {
      case 'Feliz':
        return Icons.sentiment_very_satisfied;
      case 'Neutro':
        return Icons.sentiment_neutral;
      case 'Triste':
        return Icons.sentiment_very_dissatisfied;
      default:
        return Icons.disabled_by_default;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medidor de Humor'),
        backgroundColor: Color(0xFF10AC84),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _obterIcone(_humorController.status),
                size: 150,
                color: Colors.yellow[700],
              ),
              Text(_humorController.status, style: TextStyle(fontSize: 40)),
              Text(
                'Nível de humor: ${_humorController.nivel}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  botaoPrincipal(
                    funcao: () {
                      setState(() {
                        _humorController.diminuir();
                      });
                    },
                    corDeFundo: Colors.redAccent,
                    texto: 'Diminuir Humor',
                  ),
                  botaoPrincipal(
                    funcao: () {
                      setState(() {
                        _humorController.aumentar();
                      });
                    },
                    corDeFundo: Colors.greenAccent,
                    texto: 'Aumentar Humor',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
