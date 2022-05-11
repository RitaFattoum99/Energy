import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 3)
                    ],
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff85C48D),
                        Color(0xff2BB6C7),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                child: Center(
                  child: Image.asset(
                    'images/drawer.png',
                    scale: 1.3,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.09, left: size.width * 0.01),
              child: SizedBox(
                width: size.width * 0.18,
                height: size.height * 0.065,
                child: Image.asset('images/logo.png'),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 125,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: Image.asset(
                  'images/station.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '7654321',
                  style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 40,
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '(Device param : us single 40 A)',
            style: TextStyle(color: Color(0xff85C48D), fontSize: 15),
          ),
        ),
        SizedBox(
          width: 250,
          height: 250,
          child: Image.asset(
            'images/startcharging.png',
            scale: 0.9,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '(Ready, Please start charging)',
            style: TextStyle(color: Color(0xff2BB6C7), fontSize: 15),
          ),
        ),
      ],
    ));
  }
}
