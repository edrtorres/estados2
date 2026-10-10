
import 'package:estados2/classContadorProvider.dart';
import 'package:estados2/classFormularioProvider.dart';
import 'package:estados2/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  //cuando se corre la app en forma normal
  //runApp(MyApp());

  //cuando se corre con provider
  // debemos declarar la clases de Provider en este caso 
  // es nuestra clase ContadorProvider
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ClassContadorProvider()),
      ChangeNotifierProvider(create: (_)=> ClassFormularioProvider())
  ],
  child: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Estados'),
        ),
        body: Menu(),
      ),
    );
  }
}


