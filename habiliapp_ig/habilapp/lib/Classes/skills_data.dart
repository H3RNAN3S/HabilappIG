
class SkillData{
  String skill;
  String area;
  String nivel;
  String version;
  String date;
  SkillData(this.skill,this.area, this.nivel, this.version,this.date);

  static List<SkillData> cards(){
    return [SkillData('Java', 'Desarrollo', 'Intermedio', '1.8','23/03/2019'),
      SkillData('Windows', 'Infraestructura', 'Alto', '2016','07/04/2019'),
      SkillData('Cisco', 'Infraestructura', 'Bajo', '12.1','10/06/2019'),
      SkillData('Phyton', 'Desarrollo', 'Alto', '3.0','10/10/2019'),
      SkillData('Firewall', 'Infraestructura', 'Alto', '2013.06.10.107','29/11/2019'),];
  }
}