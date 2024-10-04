import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/nav_bar_page.dart';

import 'nav_bar/home/screen/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    navigateToHome();
    super.initState();
  }

  navigateToHome()async{

    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavBarPage()));

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/images/Logo.png"),),
      ),
    );
  }
}
