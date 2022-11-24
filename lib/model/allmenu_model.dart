import 'package:flutter/material.dart';

class AllMenu {
  final String name;
  final String images;
  final int price;
  final String topping;
  final double ranting;
  Widget? icon;

  AllMenu({
    required this.name,
    required this.images,
    required this.price,
    required this.topping,
    required this.ranting,
    required this.icon,
  });
}

var allCoffeMenu = [
  AllMenu(
    name: 'Cappucino',
    images: 'assets/capucinno.jpg',
    price: 12000,
    topping: 'With Chocolate',
    ranting: 4.7,
    icon: const Icon(
      Icons.star,
      color: Colors.amber,
    ),
  ),
  AllMenu(
    name: 'Kopi dari Hati',
    images: 'assets/dari_hati.jpg',
    price: 18000,
    topping: 'With Low Flat Milk',
    ranting: 4.8,
    icon: const Icon(
      Icons.star,
      color: Colors.amber,
    ),
  ),
  AllMenu(
    name: 'Kopi Bujangan',
    images: 'assets/bujangan.jpg',
    price: 15000,
    topping: 'Sprite Boba',
    ranting: 4.6,
    icon: const Icon(
      Icons.star,
      color: Colors.amber,
    ),
  ),
  AllMenu(
    name: 'Kopi Mama Muda',
    images: 'assets/kopi_muda.png',
    price: 18000,
    topping: 'Jagung Serut',
    ranting: 4.9,
    icon: const Icon(
      Icons.star,
      color: Colors.amber,
    ),
  ),
  AllMenu(
    name: 'Kopi Susu Soda',
    images: 'assets/kopi_susu.jpg',
    price: 19000,
    topping: 'Batu Akik Yougurt',
    ranting: 4.8,
    icon: const Icon(
      Icons.star,
      color: Colors.amber,
    ),
  ),
];
