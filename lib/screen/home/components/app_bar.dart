import 'package:flutter/material.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Furniture",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.black54,
              size: 30.0,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search,
              color: Colors.black54,
              size: 30.0,
            ),
          ],
        ),
      )
    ],
  );
}
