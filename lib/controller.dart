import 'package:mobx/mobx.dart';
part 'controller.g.dart';
///
/// Created by Thasciano Carvalho on 08/01/2020.
/// thasciano@gmail.com
///
/// flutter pub run build_runner build  || watch
///

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int counter = 0;

  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomeCompleto => "$nome $sobrenome";

  @action
  increment(){
    counter = counter + 1;
  }

  @action
  mudarNome(String newName){
    nome = newName;
  }


  @action
  mudarSobreNome(String newName){
    sobrenome = newName;
  }
}