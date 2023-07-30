import 'package:flutter/material.dart';

final List myImage = [
  Image.asset('assets/fruits.jpg'),
  Image.asset('assets/fruits.jpg'),
  Image.asset('assets/fruits.jpg'),
  Image.asset('assets/fruits.jpg'),
  Image.asset('assets/fruits.jpg'),
  Image.asset('assets/fruits.jpg'),
  Image.asset('assets/fruits.jpg'),
];
final List vegImage =[
  Image.asset('assets/vegetable.png'),
  Image.asset('assets/vegetable.png'),
  Image.asset('assets/vegetable.png'),
  Image.asset('assets/vegetable.png'),
];

class IconModel {
  final String? text;
  final String? image;
  final String? iconImage;
  final Color? color;

  IconModel({
    required this.text,
    required this.image,
    required this.iconImage,
    required this.color,
  });

  static final List<IconModel> home = [
    IconModel(
      text: "Fruits & Vegetables",
      image: 'assets/f&g.png',
      color: const Color(0xff5F771B),
      iconImage: 'assets/apple.png',
    ),
    IconModel(
        text: 'Drinks & Beverages',
        image: "assets/coke.png",
        iconImage: "assets/cupicon.png",
        color: Color(0xffF1420B)),
    IconModel(
        text: 'Meat & Chicken',
        image: "assets/meat.png",
        iconImage: "assets/img_1.png",
        color: Color(0xffDD7A42)),
    IconModel(
        text: 'Bakery & Dairy',
        image: "assets/bakrey.png",
        iconImage: "assets/bakreyicon.png",
        color: const Color(0xff44249C)),
    IconModel(
        text: 'Fried Fish',
        image: "assets/fish.png",
        iconImage: "assets/fishicon.png",
        color: const Color(0xff97417F)),
    IconModel(
        text: 'Pets Food',
        image: "assets/pets.png",
        iconImage: "assets/peticon.png",
        color: const Color(0xffF1420B)),


  ];
}
class Productmodel {
  final String? text1;
  final String? weight;
   final String? amount;
   final String? image2;
   Productmodel(this.text1 ,this.weight, this.amount, this.image2,  {
    required
  });
  static final List<Productmodel> home = [
    Productmodel('Tomatoes', '01kg', "220", "assets/img_2.png"),
    Productmodel('Coca Cola', '01kg', "250", "assets/img_3.png"),
    Productmodel('Banana', '01Dz', "120", "assets/img_4.png"),
    Productmodel('Mutton', '01kg', "1000", "assets/img_5.png"),
    Productmodel('Pine Apple', '590', "220", "assets/img_6.png"),
    Productmodel('Rice', '01kg', "360", "assets/img_7.png"),
  ];
}