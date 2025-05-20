import 'package:flutter/material.dart';
import 'package:medidor_humor/views/humor_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Medidor de Humor',
      home: HumorView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
