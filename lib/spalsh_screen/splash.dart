import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../home/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    Future.delayed(Duration(seconds: 3) , () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  Home()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SvgPicture.asset("assets/logo/Logo.svg"),
      )
    );
  }
}
