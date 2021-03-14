import 'package:flutter/material.dart';
import 'package:furniture_online_app/models/furniture.dart';
import 'package:furniture_online_app/screen/home/components/furniture_card.dart';
import 'package:furniture_online_app/screen/home/components/header_menu.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: [
          SizedBox(
            height: 20,
          ),
          HeaderMenu(),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
                furnitureList.length,
                (index) => FurnitureCard(
                      furniture: furnitureList[index],
                      press: () {},
                    )),
          ),
        ],
      ),
    );
  }
}
