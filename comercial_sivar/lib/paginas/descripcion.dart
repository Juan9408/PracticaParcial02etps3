import 'package:flutter/material.dart';
import 'package:comercial_sivar/paginas/muebles_card.dart';

class Descripcion extends StatefulWidget {
  Descripcion({Key? key}) : super(key: key);

  @override
  State<Descripcion> createState() => _DescripcionState();
}

class _DescripcionState extends State<Descripcion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Sec(),
    );
  }

  Widget Sec() {
    var tamanio = MediaQuery.of(context).size;
    return MueblesCard("assets/simg/s2.png", "Silla Naranja",
        "Silla de roble linea otoñal", "30.00");
  }
}
