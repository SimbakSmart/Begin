import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

final estiloTexto = new TextStyle(fontSize: 25);
final conteo=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle:true ,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de click ",style: estiloTexto),
            Text("$conteo",style: estiloTexto)
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          print('Hola mUndo');
        },


      ),
    );
  }
}
