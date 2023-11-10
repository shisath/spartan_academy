import 'package:flutter/material.dart';

Widget menuItemWidget(String name, [bool isSelected = false]) {
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

Widget studentsContentWidget() {
  return Center(
    child: Text('Students Content here. Coming soon !'),
  );
}

Widget academyContentWidget() {
  return Center(
    child: Text('Academy Content here. Coming soon !'),
  );
}

Widget certificatesContentWidget() {
  return Center(
    child: Text('Certificates Content here. Coming soon !'),
  );
}
