import 'package:estados2/classFormularioProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class formularioProvider extends StatelessWidget {
  const formularioProvider({super.key});

  @override
  Widget build(BuildContext context) {
        TextEditingController nombreController = TextEditingController();
    TextEditingController carreraController = TextEditingController();
    final provider = context.watch<ClassFormularioProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario Provider'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          spacing: 20,
          children: [
            Text(
              'Ingreser Valores',
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              controller: nombreController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingrese su nombre'
              ),
              ),
              TextFormField(
                controller: carreraController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Ingrese su carrera',
                ),
              ),
              Text('Valores ingresados', style: TextStyle(fontSize: 30),),
              Text('Nombre: ${provider.nombre}', style: TextStyle(fontSize: 30),),
              Text('Carrera ${provider.carrera}', style: TextStyle(fontSize: 30),),


              ElevatedButton(onPressed: (){

                context.read<ClassFormularioProvider>()
                .guardarDatos(
                    nombreController.text,
                    carreraController.text         
                  );
     
              },       child: Text('Provider Formulario')
   
              )
          ],
        ),
        ),
      
      
    );
  }
}