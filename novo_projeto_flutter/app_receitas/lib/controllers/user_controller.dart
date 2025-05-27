import 'package:app_receitas/models/user.dart';

class UserController {

  static final UserController instance = UserController();

  final User _user = User();

  void setUser(String user){
    _user.setUser(user);
  }

  //Getter
  String get user => _user.getUser();
}