import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Acceuil extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(color: Colors.white70),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/icon/alandia_3.png",
                    width: Get.width * .5,
                  ),
                  SizedBox(
                    height: Get.height * .05,
                  ),
                  SizedBox(
                    child: RoundedLoadingButton(
                      elevation: 0,
                      height: 46,
                      width: 130,
                      controller: _btnController,
                      color: const Color(0xFF03545A),
                      successColor: Colors.blue,
                      onPressed: () {
                        Get.toNamed("/home");
                      },
                      valueColor: Colors.white,
                      borderRadius: 90,
                      child: Text("commencer",
                          style: const TextStyle(
                              color: Color(0xFFFFFFFF), fontSize: 17)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * .1,
            ),
            Positioned(
                bottom: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/img/pouce.png",
                      width: Get.width * .65,
                    ),
                    Image.asset(
                      "assets/img/mais.png",
                      width: Get.width * .4,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
