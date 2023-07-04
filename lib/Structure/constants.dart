
import 'package:flutter/material.dart';
const TextStyle frontPageTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w300,
  color: Colors.black,
    backgroundColor: Colors.white
);


const TextStyle questionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    shadows: [
        Shadow(
            color: Colors.black,
            offset: Offset(-1, -1),
            blurRadius: 1,
        ),
        Shadow(
            color: Colors.black,
            offset: Offset(1, -1),
            blurRadius: 1,
        ),
        Shadow(
            color: Colors.black,
            offset: Offset(1, 1),
            blurRadius: 1,
        ),
        Shadow(
            color: Colors.black,
            offset: Offset(-1, 1),
            blurRadius: 1,
        ),
    ],
);

const TextStyle correctAndYourAnswer = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: Colors.black,

);

