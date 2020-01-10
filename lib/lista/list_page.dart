import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_mobx/lista/item_widget.dart';
import 'package:movie_mobx/lista/lista_controller.dart';
import 'package:movie_mobx/lista/model/item_model.dart';

///
/// Created by Thasciano Carvalho on 10/01/2020.
/// thasciano@gmail.com
///

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  final listaController = ListaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: "Pesquisa..."),
        ),
        actions: <Widget>[
          IconButton(
            icon: Observer(
              builder: (BuildContext context) {
                return Text(listaController.totalChecked.toString());
              },
            ),
          )
        ],
      ),
      body: Observer(
        builder: (BuildContext context) {
          return Container(
              child: ListView.builder(
                  itemCount: this.listaController.listItens.length,
                  itemBuilder: (context, index) {
                    var item = listaController.listItens[index];
                    return ItemWidget(
                        item: item,
                        removeClicked: () {
                          listaController.removeItem(item);
                        });
                  }));
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _dialog();
          }),
    );
  }

  _dialog() {
    var model = ItemModel();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Adicionar Item"),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Novo item'),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  listaController.addItem(model);
                  Navigator.of(context).pop();
                },
                child: Text('Salvar'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'),
              )
            ],
          );
        });
  }
}
