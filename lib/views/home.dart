import 'package:alandia/constante.dart';
import 'package:alandia/views/widgets/card_plant.dart';
import 'package:alandia/views/widgets/climat.dart';
import 'package:alandia/views/widgets/navigation_bar.dart';
import 'package:alandia/views/widgets/recherche.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: couleurPrimaire,
        body: Container(
          height: Get.height * 1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 9.0 * 2.5),
                  height: Get.height * .37,
                  child: Stack(
                    children: [
                      Container(
                        height: Get.height * .35,
                        decoration: BoxDecoration(
                            color: couleurPrimaire,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        child: Center(child: Climat()),
                      ),
                      BarreRecherche()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Vos plantes',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.filter_list)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 250,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardPlant("Rose", "Antsirabe", "flower.jpg"),
                          CardPlant("Rose", "Antsirabe", "flower.jpg"),
                          CardPlant("Rose", "Antsirabe", "flower.jpg"),
                          CardPlant("Rose", "Antsirabe", "flower.jpg")
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            Container(color: couleurPrimaire, child: NavBar()));
  }
}
