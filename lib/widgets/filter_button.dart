import 'package:flutter/material.dart';

Widget filterButton(String title, bool isSelected){
  return TextButton(
    onPressed: isSelected ? null : (){},
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.grey[300]),
      backgroundColor: MaterialStateProperty.all(
        isSelected ? Colors.black: Colors.grey[200]
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 28, vertical: 15)
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )
    ),
    child: Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.w400
      ),
    ),
  );
}