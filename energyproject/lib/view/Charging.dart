import 'package:energyproject/view/page4.dart';
import 'package:energyproject/view/page6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Charging extends StatelessWidget {
  const Charging({Key? key}) : super(key: key);

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
            top: size.height * 0.03,
            left: size.width * 0.35,
          ),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.05,
                height: size.height * 0.05,
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
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.001,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              '(Device param : us single 40 A)',
              style: TextStyle(color: Color(0xff2BB6C7), fontSize: 15),
            ),
            Image.asset(
              'images/charging.png',
              width: 175,
              height: 175,
              scale: 1.2,
            ),
            Text(
              'Charging',
              style: TextStyle(color: Color(0xff85C48D), fontSize: 20),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.01,
            bottom: size.height * 0.02,
          ),
        ),
        Container(
          width: size.width * 0.8,
          height: size.height * 0.2,
          color: Color(0xffdef7e1).withOpacity(0.3),
          child: Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.03,
            ),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Current",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "0 A",
                              style: TextStyle(color: Color(0xff85C48D)),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Color(0xff85C48D),
                          width: 20,
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Voltage",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "238.3 v",
                              style: TextStyle(color: Color(0xff85C48D)),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Color(0xff85C48D),
                          width: 20,
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Power",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "0 kw",
                              style: TextStyle(color: Color(0xff85C48D)),
                            ),
                          ],
                        ),
                      ]),
                ),
                SizedBox(
                  height: 15,
                ),
                IntrinsicHeight(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Charging Powert",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "0.00 Kw.h",
                              style: TextStyle(color: Color(0xff85C48D)),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Color(0xff85C48D),
                          width: 20,
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Charging Time",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "0 min",
                              style: TextStyle(color: Color(0xff85C48D)),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.02, left: size.width * 0.001),
          child: Text(
            'Set charging current : (30A)',
            style: TextStyle(color: Color(0xff2BB6C7), fontSize: 15),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
          ),
          child: Container(
            height: size.height * 0.08,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff65AF85),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: MaterialButton(
                child: const Text(
                  "End charging",
                  style: TextStyle(fontSize: 15, color: Color(0xff65AF85)),
                ),
                onPressed: () {
                  Get.to(() => Page4());
                }),
          ),
        ),
      ],
    ));
  }
}
