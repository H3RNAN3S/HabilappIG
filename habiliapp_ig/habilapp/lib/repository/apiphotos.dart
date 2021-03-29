import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:pruebas/model/item.dart';
import 'package:pruebas/repository/apibehavior.dart';

class ApiPhotos implements ApiBehavior{
  Client client = Client();

  final _baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<Item>> fetchItemList() async{
    final response = await client.get("$_baseUrl/photos");
    if (response.statusCode == 200) {
      Iterable l = json.decode(response.body);
      List<Item> itemList =  l.map((i) => Item.fromJson(i)).toList();
      return itemList;
    } else {
      throw Exception('Failed to load photos');
    }
  }
}