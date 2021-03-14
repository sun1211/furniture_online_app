import 'package:flutter/material.dart';
import 'package:furniture_online_app/models/furniture.dart';
import 'package:furniture_online_app/screen/detail_screen/component/body.dart';

import 'component/app_bar.dart';

class DetailScreen extends StatelessWidget {
  final Furniture furniture;
  const DetailScreen({Key key, this.furniture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailAppBar(context),
      body: Body(
        furniture: furniture,
      ),
    );
  }
}
