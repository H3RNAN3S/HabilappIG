

import 'package:pruebas/model/item.dart';
import 'package:pruebas/repository/apibehavior.dart';
import 'package:pruebas/repository/apiphotos.dart';

class Repository{
  ApiBehavior api;

  Repository(){
    api = ApiPhotos();
  }

  Repository.fromApi(this.api);

  Future<List<Item>> getAllItems(){
    return api.fetchItemList();
  }

}