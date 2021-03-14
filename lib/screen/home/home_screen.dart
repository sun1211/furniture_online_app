import 'package:flutter/material.dart';
import 'package:furniture_online_app/screen/home/components/app_bar.dart';
import 'package:furniture_online_app/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Body(),
    );
  }
}
