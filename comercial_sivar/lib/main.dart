import 'package:comercial_sivar/paginas/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CSivar());
}

class CSivar extends StatelessWidget {
  const CSivar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: Principal(),
    );
  }
}
