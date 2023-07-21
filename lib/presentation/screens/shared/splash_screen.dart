import 'package:flutter/material.dart';

import '../../../constants/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController?animationController;
  Animation?animation;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
        ()
        {
          Navigator.pushNamed(
              context, loginScreen
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image.asset(
              "assets/images/splash.png",
            fit:BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
