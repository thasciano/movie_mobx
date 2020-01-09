import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_mobx/formulario/cliente_controller.dart';
import 'package:provider/provider.dart';

///
/// Created by Thasciano Carvalho on 09/01/2020.
/// thasciano@gmail.com
///
class BodyWiget extends StatelessWidget {

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ClienteController>(context);

    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Observer(
            builder: (BuildContext context) {
              return _textField(
                  labelText: "name",
                  errorText: controller.validateName,
                  onChanged: controller.cliente.changeName);
            },
          ),
          SizedBox(height: 20,),
          Observer(
            builder: (BuildContext context) {
              return _textField(
                  labelText: "email",
                  errorText: controller.validateEmail,
                  onChanged: controller.cliente.changeEmail);
            },
          ),
          SizedBox(height: 20,),

          Observer(
            builder: (BuildContext context) {
              return RaisedButton(
                color: Colors.green,
                onPressed: controller.isValid ? (){} : null,
                child: Text("Salvar"),
              );
            },
          ),
        ],
      ),
    );
  }
}
