import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_mobx/formulario/cadastro.dart';
import 'package:movie_mobx/controller.dart';
import 'package:movie_mobx/lista/list_page.dart';
import 'package:movie_mobx/lista/list_page.dart';
import 'package:movie_mobx/login.dart';



///
/// Created by Thasciano Carvalho on 08/01/2020.
/// thasciano@gmail.com
///

class HomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("MobX"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Acesse os exemplos em mobx: ',
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text('Login'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: Text('Cadastro'),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaPage()),
                  );
                },
                child: Text('Lista'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}