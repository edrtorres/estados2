import 'package:flutter/material.dart';

class ClassFormularioProvider with ChangeNotifier{
String nombre='';
String carrera='';

void guardarDatos(String elNombre, String laCarrera){

  nombre = elNombre;
  carrera = laCarrera;
  notifyListeners();

}


}