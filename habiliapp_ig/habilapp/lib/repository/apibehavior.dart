import 'package:pruebas/model/item.dart';

abstract class ApiBehavior{

  Future<List<Item>> fetchItemList();

}