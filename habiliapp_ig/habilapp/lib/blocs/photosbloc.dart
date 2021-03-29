
import 'package:rxdart/rxdart.dart';
import 'package:pruebas/model/item.dart';
import 'package:pruebas/repository/apitest.dart';
import 'package:pruebas/repository/repository.dart';

class PhotosBloc {

  final _repository = Repository.fromApi(ApiTest());
  final _itemsFetcher = PublishSubject<List<Item>>();

  Observable<List<Item>> get allItems => _itemsFetcher.stream;

  getAllItems() async{
    List<Item> items = await _repository.getAllItems();
    _itemsFetcher.sink.add(items);
  }

  dispose(){
    _itemsFetcher.close();
  }

}

final photosbloc = PhotosBloc();
