import 'package:pruebas/model/item.dart';
import 'package:pruebas/repository/apibehavior.dart';

class ApiTest implements ApiBehavior{
  @override

  Future<List<Item>> fetchItemList() async {
    List<Item> itemsOut = List<Item>();
    itemsOut.add(Item.fromParams(1, 1, "Gato 1", "https://img.huffingtonpost.com/asset/5c8ad782230000d50423cebe.jpeg?ops=scalefit_630_noupscale", "https://i7.pngguru.com/preview/936/521/66/sonic-dash-my-melody-sanrio-cat-character-cartoon-cat.jpg"));
    itemsOut.add(Item.fromParams(1, 1, "Gato 2", "https://img.huffingtonpost.com/asset/5c8ad782230000d50423cebe.jpeg?ops=scalefit_630_noupscale", "https://i7.pngguru.com/preview/936/521/66/sonic-dash-my-melody-sanrio-cat-character-cartoon-cat.jpg"));
    itemsOut.add(Item.fromParams(1, 1, "Gato 3", "https://img.huffingtonpost.com/asset/5c8ad782230000d50423cebe.jpeg?ops=scalefit_630_noupscale", "https://i7.pngguru.com/preview/936/521/66/sonic-dash-my-melody-sanrio-cat-character-cartoon-cat.jpg"));
    itemsOut.add(Item.fromParams(1, 1, "Gato 4", "https://img.huffingtonpost.com/asset/5c8ad782230000d50423cebe.jpeg?ops=scalefit_630_noupscale", "https://i7.pngguru.com/preview/936/521/66/sonic-dash-my-melody-sanrio-cat-character-cartoon-cat.jpg"));
    itemsOut.add(Item.fromParams(1, 1, "Gato 5", "https://img.huffingtonpost.com/asset/5c8ad782230000d50423cebe.jpeg?ops=scalefit_630_noupscale", "https://i7.pngguru.com/preview/936/521/66/sonic-dash-my-melody-sanrio-cat-character-cartoon-cat.jpg"));
    itemsOut.add(Item.fromParams(1, 1, "Gato 6", "https://img.huffingtonpost.com/asset/5c8ad782230000d50423cebe.jpeg?ops=scalefit_630_noupscale", "https://i7.pngguru.com/preview/936/521/66/sonic-dash-my-melody-sanrio-cat-character-cartoon-cat.jpg"));
    return await Future.delayed(Duration(seconds:4), () => itemsOut);
  }

}