import 'package:flutter/material.dart';
import 'package:furniture_online_app/constants.dart';
import 'package:furniture_online_app/models/furniture.dart';

class HeaderMenu extends StatefulWidget {
  HeaderMenu({Key key}) : super(key: key);

  @override
  _HeaderMenuState createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          menus.length,
          (index) => InkWell(
            onTap: () {
              this.setState(() {
                activeIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: activeIndex == index ? kPrimary : Colors.transparent,
                  border: Border.all(
                      color:
                          activeIndex == index ? Colors.transparent : kPrimary),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    menus[index],
                    style: TextStyle(
                      color: activeIndex == index ? kWhite : kPrimary,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
