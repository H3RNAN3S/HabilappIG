class Perfil{
  String name;
  String profession;
  String img;
  Perfil(this.name,this.profession,this.img);
  static List<Perfil> dato(){
    return [Perfil('Brayan González Buriticá', 'Ingeniero en telecomunicaciones', 'b.jpeg'),
      Perfil('Cristian Rojas', 'Ingeniero en Sistemas Informaticos', 'c.jpeg'),
      Perfil('Hernán Darío Machuca Quejada', 'Arquitecto', 'h.jpeg'),
      Perfil('Santiago Cobos Castrillón', 'Estudiante de Ingeniería', 'juanito.jpg'),
    ];
  }
}
