import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget{
  // Parametros del boton
  final String text;
  final VoidCallback onPressed;
  final IconData icon;

// Constructor inicia las variables del boton
  const CustomBottom({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      tooltip: text,
      child: Icon(icon),
    );
  }
}