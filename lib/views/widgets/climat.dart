import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Climat extends StatelessWidget {
  const Climat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      CircleAvatar(
        radius: 80,
        backgroundColor: Colors.white30,
        child: Container(
          child: Image.asset(
            "assets/icon/climat/nuage_soleil_pluie_grand.png",
            width: Get.height * .20,
          ),
        ), //mettre en codition l'image en fonction du climat venant de l'API
      ),
      Container(
        margin: EdgeInsets.only(top: Get.height * .13),
        child: Column(
          children: [
            Text(
              "26°",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              "Nuageux",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
            Text(
              "Samedi, 11 janvier",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      )
    ]);
  }
}
