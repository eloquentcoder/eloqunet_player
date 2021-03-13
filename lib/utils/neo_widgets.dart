import 'package:eloquent_player/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget neuButton(IconData icon, Function function, {size = 5.4}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0XFF2e2e2e),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [Color(0XFF1c1c1c), Color(0XFF383838)],
          ),
          boxShadow: [
            new BoxShadow(
              color: Color(0XFF1c1c1c),
              offset: Offset(5.0, 5.0),
//                          spreadRadius: -5.0,
              blurRadius: 10.0,
            ),
            new BoxShadow(
              color: Color(0XFF404040),
              offset: Offset(-5.0, -5.0),
//                          spreadRadius: -5.0,
              blurRadius: 10.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Color(0XFF303030), Color(0XFF1a1a1a)]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Icon(
              icon,
              size: size * Responsive.imageSizeMultiplier,
              color: Colors.white38,
            ),
          ),
        ),
      ),
    ),
  );
}
