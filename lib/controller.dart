import 'package:mobx/mobx.dart';

///
/// Created by Thasciano Carvalho on 08/01/2020.
/// thasciano@gmail.com
///
class Controller{
  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  Action increment;

  Controller(){
    increment = Action(_increment);
    autorun((_){
      print(counter);
    });
  }

  _increment(){
    counter++;
  }
}