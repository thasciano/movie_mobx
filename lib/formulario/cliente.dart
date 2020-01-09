import 'package:mobx/mobx.dart';
part 'cliente.g.dart';
///
/// Created by Thasciano Carvalho on 09/01/2020.
/// thasciano@gmail.com
///
class Cliente = _ClienteBase with _$Cliente;

abstract class _ClienteBase with Store{
  @observable
  String nome;
  @action
  changeName(String value) => nome = value;

  @observable
  String email;
  @action
  changeEmail(String value) => email = value;

  @observable
  String cpf;
  @action
  changeCpf(String value) => cpf = value;

}