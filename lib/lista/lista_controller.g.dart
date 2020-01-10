// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaController on _ListaControllerBase, Store {
  final _$listItensAtom = Atom(name: '_ListaControllerBase.listItens');

  @override
  ObservableList<ItemModel> get listItens {
    _$listItensAtom.context.enforceReadPolicy(_$listItensAtom);
    _$listItensAtom.reportObserved();
    return super.listItens;
  }

  @override
  set listItens(ObservableList<ItemModel> value) {
    _$listItensAtom.context.conditionallyRunInAction(() {
      super.listItens = value;
      _$listItensAtom.reportChanged();
    }, _$listItensAtom, name: '${_$listItensAtom.name}_set');
  }

  final _$_ListaControllerBaseActionController =
      ActionController(name: '_ListaControllerBase');

  @override
  dynamic addItem(ItemModel model) {
    final _$actionInfo = _$_ListaControllerBaseActionController.startAction();
    try {
      return super.addItem(model);
    } finally {
      _$_ListaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel model) {
    final _$actionInfo = _$_ListaControllerBaseActionController.startAction();
    try {
      return super.removeItem(model);
    } finally {
      _$_ListaControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
