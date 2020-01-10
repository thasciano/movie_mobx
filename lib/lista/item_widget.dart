import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_mobx/lista/model/item_model.dart';

///
/// Created by Thasciano Carvalho on 10/01/2020.
/// thasciano@gmail.com
///
class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final Function removeClicked;

  const ItemWidget({Key key, this.item, this.removeClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return ListTile(
          title: Text(item.title),
          leading: Checkbox(
            value: item.check,
            onChanged: item.setCheck,
          ),
          trailing: IconButton(
            color: Colors.red,
            icon: Icon(Icons.remove_circle),
            onPressed: removeClicked,
          ),
        );
      },
    );
  }
}
