
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  //declarando los controladores de las cajas de texto
  TextEditingController nombreController = TextEditingController();
  TextEditingController carreraController = TextEditingController();

  String nombreIngresado = '';
  String carreraIngresada = '';

  void establecerTexto(){

    setState(() {
      nombreIngresado = nombreController.text;
      carreraIngresada = carreraController.text;
    });

  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fomulario Stateful'),
      ),
      body: Column(
        spacing: 20,
        children: [
          Text('Ingrese valores', style: TextStyle(fontSize: 30),),
          TextField(
            controller: nombreController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingrese su nombre'
            ),
          ),
          TextField(
            controller: carreraController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingrese su carrera'
            ),
          ),
          Text('Valores ingresados: ', style: TextStyle(fontSize: 20),),
          Text('Nombre: $nombreIngresado', style: TextStyle(fontSize: 20),),
          Text('Carrera: $carreraIngresada', style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: establecerTexto, child: Text('Clic'))
        ],
      ),
    );
  }
}


