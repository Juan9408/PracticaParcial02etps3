import 'package:comercial_sivar/paginas/descripcion.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MueblesCard extends StatelessWidget {
  late String image;
  late String title;
  late String description;
  late String precio;

  MueblesCard(this.image, this.title, this.description, this.precio);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Material(
          color: Colors.transparent,
          // child: InkWell(

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 27,
                    width: 27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                          color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$" + precio,
                          style: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.yellow[700],
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 22,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          //),*
        ),
      ),
    );
  }
}
