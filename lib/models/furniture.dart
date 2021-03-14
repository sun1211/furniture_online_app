import 'package:flutter/material.dart';

List menus = [
  "Decoration",
  "Lighting",
  "Storage",
  "Living Room",
];

class Furniture {
  final int id;
  final String name;
  final String code;
  final String img;
  final double price;
  final double proPrice;

  Furniture({
    this.id,
    this.name,
    this.code,
    this.img,
    this.price,
    this.proPrice,
  });
}

List<Furniture> furnitureList = [
  Furniture(
    id: 1,
    name: 'F01',
    code: 'SSH081686',
    img: 'assets/images/f_01.jpg',
    price: 100.00,
    proPrice: 55.00,
  ),
  Furniture(
    id: 2,
    name: 'F02',
    code: 'SSH023912',
    img: 'assets/images/f_02.jpg',
    price: 120.00,
    proPrice: 75.00,
  ),
  Furniture(
    id: 3,
    name: 'F03',
    code: 'PC985170',
    img: 'assets/images/f_03.jpg',
    price: 200.00,
    proPrice: 155.00,
  ),
  Furniture(
    id: 4,
    name: 'F04',
    code: 'PC980394',
    img: 'assets/images/f_04.jpg',
    price: 245.00,
    proPrice: 175.00,
  ),
  Furniture(
    id: 5,
    name: 'F05',
    code: 'PC932721',
    img: 'assets/images/f_05.jpg',
    price: 445.00,
    proPrice: 375.00,
  ),
  Furniture(
    id: 6,
    name: 'F06',
    code: 'PC900005',
    img: 'assets/images/f_06.jpg',
    price: 445.00,
    proPrice: 375.00,
  ),
];

List colors = [
  Colors.redAccent,
  Colors.greenAccent,
  Colors.cyanAccent,
  Colors.orangeAccent,
  Colors.purpleAccent,
  Colors.blueAccent
];
