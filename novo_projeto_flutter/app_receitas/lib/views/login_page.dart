import 'package:app_receitas/components/app_bar_component.dart';
import 'package:app_receitas/controllers/login_controller.dart';
import 'package:flutter/material.dart';

//criando um statfull digite stlful
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final _controladorUser = TextEditingController();
  final _controladorPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //widget pai de telas, possui estrutura base das telas, tela padronizada
    return Scaffold(
      appBar: appBar(),
      //body é o corpo da tela
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 16
          ),
          //COntainer vai delimitar a area
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  'Acessar sua conta',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  TextFormField(
                    controller: _controladorUser,
                    decoration: InputDecoration(
                      labelText: 'User',
                      hintText: 'Usuario de acesso',
                      prefixIcon: Icon(Icons.person)
                    ),
                    validator: (usuario){
                      if(usuario == null || usuario.isEmpty){
                        return 'O campo usuario não pode estar vazio';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _controladorPassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Senha de acesso',
                      prefixIcon: Icon(Icons.lock)
                    ),
                    validator: (senha){
                      if(senha == null || senha.isEmpty){
                        return 'O campo senha não pode estar vazio';
                      }

                      if(senha.length < 4){
                        return 'A senha deve conter no minimo 4 digitos';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        bool login = LoginControler.instance.login(_controladorUser.text, _controladorPassword.text);
                        print(login);

                        if(login){
                          Navigator.of(context).pushNamed('/receitas');
                        }

                      }
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    )
                    )
              ],

            ),
          ),
        ),
      ),
    );
  }
}