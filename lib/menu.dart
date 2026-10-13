import 'package:estados2/contadorProvider.dart';
import 'package:estados2/formulario.dart';
import 'package:estados2/formularioProvider.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nombreController = TextEditingController();
    TextEditingController carreraController = TextEditingController();
    return Column(
      children: [
        ElevatedButton(onPressed: null, child: Text('StateFul Contador')),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Formulario()),
            );
          },
          child: Text('StateFul Formulario'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContadorProvider()),
            );
          },
          child: Text('Provider Contador'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => formularioProvider()),
            );
          },
          child: Text('Provider Formulario'),
        ),
      ],
    );
  }
}
