import 'package:flutter/material.dart';

TextButton botaoPrincipal({
  Function()? funcao,
  Color? corDeFundo,
  String texto = '',
}) {
  return TextButton(
    onPressed: funcao,
    style: TextButton.styleFrom(
      backgroundColor: corDeFundo ?? Colors.red,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    child: Text(texto),
  );
}
