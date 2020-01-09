import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

///
/// Created by Thasciano Carvalho on 09/01/2020.
/// thasciano@gmail.com
///
class Login extends StatelessWidget {
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
                'You have pushed the button this many times:',
              ),
              Observer(
                builder: (BuildContext context) {
                  return Text(
                    '${controller.counter}',
                    style: Theme.of(context).textTheme.display1,
                  );
                },
              ),
              Text(
                'Nome completo: ',
              ),
              Observer(
                builder: (BuildContext context) {
                  return Text(
                    '${controller.nomeCompleto}',
                    style: Theme.of(context).textTheme.display1,
                  );
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: controller.mudarNome,
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(labelText: 'SobreNome'),
                onChanged: controller.mudarSobreNome,
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

