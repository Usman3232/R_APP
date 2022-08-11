import 'dart:async';

import 'package:flutter/material.dart';
import 'package:r_app/pages/Authentication/login/login.dart';
import 'package:r_app/utils/size_config.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, new MaterialPageRoute(builder: (context) => Login())));
    return Scaffold(
      // backgroundColor: Color(0xffE5E5E5),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
