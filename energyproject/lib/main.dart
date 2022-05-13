import 'package:energyproject/view/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/page1.dart';

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
      ),
      home: const Page4(),
    );
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
                fontSize: size.width * 0.068, color: const Color(0xff50A75B)),
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
    ));
  }
}
