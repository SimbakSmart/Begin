import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';

import '../utils/icono_string_util.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){

    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
           return ListView(
             children: _listaItems(snapshot.data, context)
           );
        });
  }

  List<Widget> _listaItems(List<dynamic> data,BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach( (opt) {

      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        leading:  getIcon( opt['icon'] ) ,
        trailing: Icon ( Icons.keyboard_arrow_right, color: Colors.blue ),
        onTap: () {



        },
      );

      opciones..add( widgetTemp )
        ..add( Divider() );

    });

    return opciones;
  }
}
