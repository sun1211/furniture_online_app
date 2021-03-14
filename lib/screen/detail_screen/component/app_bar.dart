import 'package:flutter/material.dart';

AppBar DetailAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black45,
      ),
      onPressed: () {
        Navigator.pop(
          context,
        );
      },
    ),
  );
}
