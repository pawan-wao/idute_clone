import 'package:flutter/material.dart';
class ModelData{
  static List<Item> item = [
    Item(cname: "Art"),
    Item(cname: "Fashion"),
    Item(cname: "Tech"),
    Item(cname: "Legal"),
    Item(cname: "Finance"),
    Item(cname: "Stocks"),


  ];
  static List<Item> profile =[
    Item(cname: "John Doe", catogry: "Health Care", title: "Food waste or food loss refers to uneaten or discarded food", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
    Item(cname: "Pawan singh", catogry: "Finance", title: "Food waste or food loss refers to uneaten or discarded food",
  desc:  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English"),
];
}

class Item{
  String? cname;
  String? title;
  String? desc;
  String? catogry;
  Item({ this.cname, this.title, this.desc, this.catogry});
}