import 'package:energyproject/view/AddDevice.dart';
import 'package:energyproject/view/CarPage1.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          unselectedWidgetColor: Color(0xff85C48D),
        ),
        home: SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.2,
                right: size.width * 0.2,
                left: size.width * 0.2,
              ),
              child: SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.2,
                child: Image.asset('images/logo.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontSize: size.width * 0.068,
                    color: const Color(0xff50A75B)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.2,
                child: Image.asset('images/lines.png'),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xffdef9e1),
                ),
                child: Center(
                  child: Image.asset(
                    'images/logo.png',
                    scale: 3.5,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Color(0xff65AF85)),
                title: Text(
                  "Home",
                  style:
                      TextStyle(color: const Color(0xff65AF85), fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => HomeEV());
                },
              ),
              ListTile(
                leading: Icon(Icons.car_repair_sharp, color: Color(0xff65AF85)),
                title: Text(
                  "Add Device",
                  style:
                      TextStyle(color: const Color(0xff65AF85), fontSize: 20),
                ),
                onTap: () {
                  Get.to(() => AddDevice());
                },
              ),
            ],
          ),
        ));
  }
}
