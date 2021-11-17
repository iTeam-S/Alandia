import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlantCard extends StatefulWidget {
  const PlantCard({Key? key}) : super(key: key);

  @override
  _PlantCardState createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .52,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: Get.width * 0.55,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          padding: EdgeInsets.all(50.0 / 2),
          decoration: BoxDecoration(
            color: Colors.greenAccent.shade400,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 10,
                color: Colors.black,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: Get.height * .3,
                width: Get.width * .5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage("assets/img/flower.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Margueritte".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '3 jours',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
