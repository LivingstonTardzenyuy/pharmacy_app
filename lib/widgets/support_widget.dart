import 'package:flutter/material.dart';
class AppWidget{
  static TextStyle headlineTextStyle(double size){
    return TextStyle(
        color: Colors.black, fontSize: size, fontFamily: 'Poppins'
    );
  }

  static TextStyle lightTextStyle(double size) {
    return TextStyle(
      color: Colors.black, fontSize: size, fontFamily: "Poppins1"
    );
  }

  static Widget selectedCategory(String name){
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(30),
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Text(name, style: TextStyle(
                fontFamily: "Poppins ",
                fontSize: 18,
                color: Colors.white
            )),
          )
      ),
    );
  }



  static TextStyle whiteTextStyle(double size){
    return TextStyle(
        color: Colors.white, fontSize: size, fontFamily: "Poppins"
    );
  }
}