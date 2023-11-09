import 'package:flutter/material.dart';

Widget contactItemWidget(IconData icon, String title, String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Icon
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(10),
          child: Icon(
            icon,
            size: 40,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                content,
                style:
                    TextStyle(color: Colors.white, fontSize: 18, height: 1.5),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
