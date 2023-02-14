import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() {
    return _InputPageState();
  }
}

class _InputPageState extends State<InputPage> {


  String _nombre = '';
  String _email  = '';
  String _fecha  = '';

  String _opcionSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
        ],
      ),
    );
  }


  Widget _crearInput() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('Letras ${ _nombre.length }'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon( Icons.accessibility ),
          icon: Icon( Icons.account_circle )
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );

  }
}