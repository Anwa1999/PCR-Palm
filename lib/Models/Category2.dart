import 'package:flutter/cupertino.dart';

class Category {
  int id;
  String name;
  String icon;
  int color;
  String description;
  String description2;
  String description3;
  String description4;
  String description5;
  String imgName;
  String image;
  List<Category> subCategories;

  Category(
      {this.id,
      this.name,
      this.icon,
      this.color,
      this.description,
      this.description2,
      this.description3,
      this.description4,
      this.description5,
      this.imgName,
      this.image,
      this.subCategories});
}

/*List<Category> demoItems = [
  Category(
    id: 1,
    name: 'ขาดโบรอน (B)',
    icon: '',
    color: 0xFFAFEEEE,
    imgName: "cat1",
  ),
  Category(
    id: 2,
    name: 'ขาดโพแทสเซียม (K)',
    icon: '',
    color: 0xFFAFEEEE,
    imgName: "cat2",
  ),
  Category(
    id: 3,
    name: 'ขาดแมกนีเซียม (Mg)',
    icon: '',
    color: 0xFFAFEEEE,
    imgName: "cat3",
  ),
  Category(
    id: 4,
    name: 'ไม่ขาดธาตุอาหาร',
    icon: '',
    color: 0xFFAFEEEE,
    imgName: "cat4",
  ),
  Category(
    id: 5,
    name: 'ไม่สามารถจำแนกได้',
    icon: '',
    color: 0xFFAFEEEE,
    imgName: "cat5",
  ),
];*/
