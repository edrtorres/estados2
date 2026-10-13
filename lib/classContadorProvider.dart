import 'package:flutter/material.dart';

class ClassContadorProvider with ChangeNotifier {
  // el guion bajo indica que es una variable privada
  int _contador = 0;

  //getters
  int get contador => _contador;

  void aumentar() {
    _contador++;
    notifyListeners(); // notifica que el valor ha cambiado
    // como el setState
  }

  void disminuir() {
    _contador--;
    notifyListeners(); // notifica que el valor ha cambiado
    // como el setState
  }
}
