import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_mobx/formulario/body.dart';
import 'package:movie_mobx/formulario/cliente_controller.dart';
import 'package:provider/provider.dart';

///
/// Created by Thasciano Carvalho on 09/01/2020.
/// thasciano@gmail.com
///
class Cadastro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ClienteController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_){
            return Text(controller.isValid ? "Formulario Validado" : "Formulário Não Validado");
          },
        ),
      ),
      body: BodyWiget(),
    );
  }
}
