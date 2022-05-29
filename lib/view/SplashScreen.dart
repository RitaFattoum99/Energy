import 'package:energyproject/controller/navigate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final productController = Get.put(NavigateController());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 110,
            top: 180,
            child: SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.2,
              child: Image.asset('images/logo.png'),
            ),
          ),
          Positioned(
            top: 345,
            left: 140,
            child: Text(
              'Welcome',
              style: TextStyle(
                  fontSize: size.width * 0.068, color: const Color(0xff50A75B)),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: size.width,
              height: 150,
              child: Image.asset('images/lines.png'),
            ),
          )
        ],
      ),
    );
  }
}
