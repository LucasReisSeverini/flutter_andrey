import 'package:app_receitas/controllers/user_controller.dart';

class LoginControler{


  static final LoginControler instance = LoginControler();



  bool login(String user, String password){
    if(user == 'admin' && password == '123456'){
      UserController.instance.setUser(user);
      return true;
    }else{
      return false;
    }
  }
}