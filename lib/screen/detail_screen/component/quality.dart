import 'package:flutter/material.dart';
import 'package:furniture_online_app/constants.dart';

class Quality extends StatefulWidget {
  Quality({Key key}) : super(key: key);

  @override
  _QualityState createState() => _QualityState();
}

class _QualityState extends State<Quality> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: <Widget>[
          Text(
            "Qty :",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  if (qty > 1) {
                    setState(() {
                      qty = --qty;
                    });
                  }
                  // minus here
                },
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimary),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.remove,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                qty.toString(),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    qty = ++qty;
                  });
                  // minus here
                },
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimary),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.add_rounded,
                    size: 15,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
