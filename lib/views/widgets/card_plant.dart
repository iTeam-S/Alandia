import 'package:alandia/constante.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPlant extends StatelessWidget {
  final String title;
  final String region;
  final String image;

  CardPlant(this.title, this.region, this.image, {Key? key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 200,
          decoration: BoxDecoration(
            color: couleurSecondaire2,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                  color: couleurSecondaire2,
                  blurRadius: 8,
                  spreadRadius: 1,
                  offset: Offset(5, 7))
            ],
          ),
          margin: EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width * .1,
              ),
              Container(
                width: Get.width,
                height: Get.height * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: ExactAssetImage('assets/img/$image'))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal)),
                    Text(' $region',
                        style: TextStyle(
                            color: couleurPrimaire,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
