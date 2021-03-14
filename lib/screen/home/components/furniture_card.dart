import 'package:flutter/material.dart';
import 'package:furniture_online_app/constants.dart';
import 'package:furniture_online_app/models/furniture.dart';

class FurnitureCard extends StatelessWidget {
  final Furniture furniture;
  final Function press;
  const FurnitureCard({Key key, this.furniture, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Row(
          children: <Widget>[
            //images
            Hero(
              tag: furniture.id.toString(),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(furniture.img), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            //right information
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  furniture.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                //prices
                Row(
                  children: <Widget>[
                    Text(
                      furniture.proPrice.toString() + " USD",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      furniture.price.toString() + " USD",
                      style: TextStyle(
                          fontSize: 17,
                          color: kWarning,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
