import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text('Avatar Page'),
        centerTitle: true,
      ),
      body: Center(

        child:Text('Avatar page') ,
      ),
    floatingActionButton: FloatingActionButton(
    child: Icon( Icons.add_location ),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    );
  }
}
