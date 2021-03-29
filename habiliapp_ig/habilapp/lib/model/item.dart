class Item {
  int _albumId;
  int _id;
  String _title;
  String _url;
  String _miniatura;

  Item.fromJson(Map<String, dynamic> parsedJson) {
    _albumId = parsedJson['albumId'];
    _id = parsedJson['id'];
    _title = parsedJson['title'];
    _url = parsedJson['url'];
    _miniatura = parsedJson['thumbnailUrl'];
  }

  Item.fromParams(int albumId,int id, String title,String url,String miniatura){
    _albumId = albumId;
    _id = id;
    _title = title;
    _url = url;
    _miniatura = miniatura;
  }

  int get albumId => _albumId;
  int get id => _id;
  String get title => _title;
  String get url => _url;
  String get miniatura => _miniatura;
}