class LoginControler{


  static final LoginControler instance = LoginControler();



  bool login(String usuario, String password){
    if(usuario == 'admin' && password == '123456'){
      return true;
    }else{
      return false;
    }
  }
}