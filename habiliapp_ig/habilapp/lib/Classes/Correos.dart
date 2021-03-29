class Correos {
  String email;
  String password;

  Correos(this.email,this.password);
  static List<Correos> login(){
    return[Correos('brayang@habilapp.com', 'brayan1'),
      Correos('cristianr@habilapp.com', 'cristian2'),
      Correos('hernanm@habilapp.com', 'hernan3'),
      Correos('santiagoc@habilapp.com', 'santiago4'),];
  }
}