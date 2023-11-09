import 'package:flutter/material.dart';

Widget menuItemWidget(String name, bool isSelected) {
  return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: isSelected ? Color(0xFF1B1B1A) : Colors.white,
      ),
      child: Text(
        name,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 20),
      ));
}
