import 'package:flutter/material.dart';

const bgColor = Color(0xFFE5E5E5);
const selectedButtonColor = Color(0xFF71C343);
const postHeaderTextColor = Color(0xFF3B81EA);

var navButtonStyle = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14),
  ),
  primary: Colors.white,
);

const dateTimeStyle = TextStyle(
  fontFamily: 'Museo Sans Cyrl',
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Color(0xFFAEAEAE),
);

const splashScreenText = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 24,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

const postTitleText = TextStyle(
  fontFamily: 'Museo Sans Cyrl',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: postHeaderTextColor,
);

const buttonText = TextStyle(
    fontFamily: 'Gilroy',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey);
