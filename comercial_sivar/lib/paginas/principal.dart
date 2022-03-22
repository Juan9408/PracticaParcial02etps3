import 'package:comercial_sivar/paginas/muebles_card.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.elliptical(10.0, 10.0),
                ),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: const Icon(
                Icons.menu_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              "           Comercial Sivar",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              child: TextField(
                cursorColor: Colors.blueGrey.withOpacity(0.3),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 0,
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    hintText: "Buscar..."),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            TabBar(
              indicatorColor: Colors.amber,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.amber,
              isScrollable: true,
              labelStyle: const TextStyle(fontSize: 17.0),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Silla",
                ),
                Tab(
                  text: "Muebles",
                ),
                Tab(
                  text: "Camas",
                ),
                Tab(
                  text: "Cunas",
                ),
                Tab(
                  text: "Cuadros",
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MueblesCard(
                        "assets/simg/s1.png",
                        "Silla Roja",
                        "Silla de roble linea otoñal",
                        "30.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/simg/s2.png",
                        "Silla Naranja",
                        "Silla de roble linea otoñal",
                        "30.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/simg/s3.png",
                        "Silla Verde",
                        "Silla de roble liena otoñal",
                        "30.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/simg/s4.png",
                        "Silla Blanca",
                        "Silla de roble linea otoñal",
                        "30.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                  //otro bloque
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MueblesCard(
                        "assets/mimg/c0.png",
                        "Comedor Mostaza",
                        "Comedor importado desde Europa provenientes de una madera especial",
                        "750.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/mimg/c1.png",
                        "Comedor Purpura",
                        "Comedor importado desde Europa provenientes de una madera especial",
                        "750.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/mimg/c2.png",
                        "Comedor Verde",
                        "Comedor importado desde Europa provenientes de una madera especial",
                        "750.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/mimg/c3.png",
                        "Comedor Esmeralda",
                        "Comedor importado desde Europa provenientes de una madera especial",
                        "750.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                  //otro bloque
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MueblesCard(
                        "assets/cimg/c1.png",
                        "Cama F",
                        "Cama con superficie extra firme dándole un apoyo único para tu espalda, gracias a su soporte ortopédico para que tu columna y el cuerpo descansen por completo. Cuenta con Telas con tratamiento Ultra Fresh",
                        "450.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cimg/c2.png",
                        "Cama B",
                        "Cama con superficie extra firme dándole un apoyo único para tu espalda, gracias a su soporte ortopédico para que tu columna y el cuerpo descansen por completo. Cuenta con Telas con tratamiento Ultra Fresh",
                        "450.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cimg/c3.png",
                        "Cama Diseño F",
                        "Cama con mayor soporte perimetral en las orillas que brinda estabilidad para descansar, maximizando la durabilidad del colchón. Su doble colchón en la superficie permite una suave adaptabilidad corporal y confortable soporte de columna.",
                        "650.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cimg/c4.png",
                        "Cama Diseño B",
                        "Cama con mayor soporte perimetral en las orillas que brinda estabilidad para descansar, maximizando la durabilidad del colchón. Su doble colchón en la superficie permite una suave adaptabilidad corporal y confortable soporte de columna.",
                        "650.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                  //otro bloque
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MueblesCard(
                        "assets/cuimg/cu1.png",
                        "Cuna Gris",
                        "Cuna con barandas rebatibles para mas comodidad ",
                        "250.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cuimg/cu2.png",
                        "Cuna Rosada",
                        "Cuna con barandas rebatibles para mas comodidad ",
                        "250.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cuimg/cu3.png",
                        "Cuna Blanca",
                        "CUNA FUNCIONAL CRECIENTE CON CARROCAMA HELSINKSI BLANCO 195 x 90 x 90 cm (Linea CRECIENTE 1723 - 1 HEL)",
                        "250.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cuimg/cu4.png",
                        "Cuna Cafe",
                        "CUNA FUNCIONAL CRECIENTE CON CARROCAMA HELSINKSI BLANCO 195 x 90 x 90 cm (Linea CRECIENTE 1723 - 1 HEL)",
                        "250.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                  //otro bloque
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MueblesCard(
                        "assets/cuadimg/cd1.png",
                        "Cuadro de Arboles",
                        "Podria ser un Picaso",
                        "100.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cuadimg/cd2.png",
                        "Flores de Invierno",
                        "Ver la nieve y querer ser blaco :v",
                        "999.99",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cuadimg/cd3.png",
                        "Flores Blancas",
                        "Prodrian ser uno Lotos Interesante",
                        "10.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      MueblesCard(
                        "assets/cuadimg/cd4.png",
                        "Rojo",
                        "Rojo pero no la nueva pelicula de Disney :v",
                        "500.00",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
