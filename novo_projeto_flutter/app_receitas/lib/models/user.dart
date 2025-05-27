class User {

  static final User instance = User();

  String user= '';

  void setUser(String user){
    this.user = user;
  }

  String getUser(){
    return user;
  }

}