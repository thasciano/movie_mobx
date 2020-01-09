import 'package:mobx/mobx.dart';
import 'package:movie_mobx/formulario/cliente.dart';
part 'cliente_controller.g.dart';
///
/// Created by Thasciano Carvalho on 09/01/2020.
/// thasciano@gmail.com
///
class ClienteController = _ClienteControllerBase with _$ClienteController;

abstract class _ClienteControllerBase with Store{
  var cliente = Cliente();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName(){
    if(cliente.nome==null || cliente.nome.isEmpty){
      return "este campo é obrigatório";
    }else if(cliente.nome.length < 3){
      return "Seu nome precisa ter mais de 3 caracteres";
    }
    return null;
  }

  String validateEmail(){
    if(cliente.email==null || cliente.email.isEmpty){
      return "este campo é obrigatório";
    }else if(!cliente.email.contains('@')){
      return "e-mail invalido";
    }
    return null;
  }

  dispose(){}

}