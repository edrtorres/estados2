import 'package:estados2/classContadorProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContadorProvider extends StatelessWidget {
  const ContadorProvider({super.key});

  @override
  Widget build(BuildContext context) {
    //obteniendo el valor de la clase y con el watch se esta pendiente a los cambioa
    final contadorService = context.watch<ClassContadorProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('Estados'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              //Ejecutar la funcion de aumentar
              context.read<ClassContadorProvider>().aumentar();
            }, //mandando a llamar la funcion
            child: Text('Aumentar', style: TextStyle(fontSize: 30)),
          ),
          Text(
            'Contador: ${contadorService.contador}',
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          //Ejecutar la funcion de aumentar
          context.read<ClassContadorProvider>().disminuir();
        },
        child: Icon(Icons.remove), //mandando a llamar la funcion
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
