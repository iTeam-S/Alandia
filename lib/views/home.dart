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
        body: SingleChildScrollView(
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
                          color: Colors.greenAccent.shade400,
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
                color: Colors.greenAccent.shade400,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PlantCard(),
                          PlantCard(),
                          PlantCard(),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar:
            Container(color: Colors.greenAccent.shade400, child: NavBar()));
  }
}
