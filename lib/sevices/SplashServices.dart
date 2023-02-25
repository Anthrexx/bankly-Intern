import 'dart:async';
import 'package:bankly/pages/firstSplash.dart';
import 'package:bankly/pages/pageOne.dart';
// import 'package:bankly/pages/splashScreen.dart';

import 'package:flutter/material.dart';


class SplashServices {
  void islogin(BuildContext context) {
    Timer(const Duration(seconds: 2), () =>
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => first())));
  }
}


