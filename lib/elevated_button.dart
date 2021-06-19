
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget elevatedButton(BuildContext context, VoidCallback callback, String text) {
  return Container(
    width: double.infinity,
      //padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ElevatedButton(
        child: Text(text),
        style: ElevatedButton.styleFrom(
            primary: Colors.green,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(vertical: 20),
            textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        onPressed: callback
      ),
  );
}