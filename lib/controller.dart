import 'package:mobx/mobx.dart';
part 'controller.g.dart';
///
/// Created by Thasciano Carvalho on 08/01/2020.
/// thasciano@gmail.com
///
/// flutter pub run build_runner build
///

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int counter = 0;

  @action
  increment(){
    counter++;
  }
}