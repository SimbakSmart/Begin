import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo=0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numeo de taps ',style: _estiloTexto),
            Text('$_conteo ',style: _estiloTexto)
          ],
        ),
      ),

      floatingActionButton: _crearBotones(),
    );
  }


  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.exposure_zero ), onPressed: _reset ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove ), onPressed: _sustraer ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _agregar ),
      ],
    );

  }

  void _agregar() {
    setState(() => _conteo++ );
  }

  void _sustraer() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }
}


























