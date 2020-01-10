import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_mobx/lista/model/item_model.dart';
part 'lista_controller.g.dart';
///
/// Created by Thasciano Carvalho on 10/01/2020.
/// thasciano@gmail.com
///
class ListaController = _ListaControllerBase with _$ListaController;

abstract class _ListaControllerBase with Store {

  @computed
  int get totalChecked => listItens.where((item)=>item.check).length;


  @observable
  ObservableList<ItemModel> listItens = [
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
    ItemModel(title: 'Item 4', check: false),
    ItemModel(title: 'Item 5', check: true),
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
    ItemModel(title: 'Item 4', check: false),
    ItemModel(title: 'Item 5', check: true),
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
    ItemModel(title: 'Item 4', check: false),
    ItemModel(title: 'Item 5', check: true),
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
    ItemModel(title: 'Item 4', check: false),
    ItemModel(title: 'Item 5', check: true),
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2', check: false),
    ItemModel(title: 'Item 3', check: true),
    ItemModel(title: 'Item 4', check: false),
    ItemModel(title: 'Item 5', check: true),

  ].asObservable();

  @action
  addItem(ItemModel model){
    listItens.add(model);
  }

  @action
  removeItem(ItemModel model){
    listItens.removeWhere((item)=> item.title == model.title);
  }
}
