import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/home_temp.dart';
import 'package:flutter_components/src/routes/routes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
     // home: HomePage(),
      initialRoute: '/',
      routes:getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){ //Si una pagina no esta configura, muestra alert page pof defecto

        print( 'Ruta llamda: ${ settings.name }' );

        return MaterialPageRoute(
            builder: ( BuildContext context ) => AlertPage()
        );
      },
    );
  }
}


