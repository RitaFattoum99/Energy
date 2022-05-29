import 'dart:ui';

import 'package:energyproject/view/AddDevice.dart';
import 'package:energyproject/view/CarPage1.dart';
import 'package:energyproject/view/CarPage3.dart';
import 'package:energyproject/view/HomeEV.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentSet extends StatelessWidget {
  const AppointmentSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: size.height * 0.04,
            left: size.width * 0.06,
            child: GestureDetector(
              onTap: () {
                Get.to(() => CarPage1());
              },
              child: Row(
                children: [
                  Positioned(
                    top: 30.0,
                    left: 20,
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
                          'images/Menu.png',
                          scale: 2.1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.05,
                    left: size.width * 0.5,
                    child: SizedBox(
                        child: Text(
                      ' Appointment Set',
                      style: TextStyle(
                        color: Color(0xff85C48D),
                        fontSize: size.width * 0.055,
                      ),
                    )),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.2,
            left: size.width * 0.1,
            child: Container(
              color: Color(0xffdef7e1).withOpacity(0.3),
              width: size.width * 0.8,
              child: Column(children: [
                Positioned(
                  top: size.height * 0.02,
                  bottom: size.height * 0.02,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start time",
                        style: TextStyle(
                          color: Color(0xff85C48D),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "2022-2-25  14:23",
                        style: TextStyle(
                          color: Color(0xff2BB6C7),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Positioned(
                  top: size.height * 0.02,
                  bottom: size.height * 0.02,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Charging time",
                        style: TextStyle(
                          color: Color(0xff85C48D),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                          color: Color(0xff2BB6C7),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Positioned(
                  top: size.height * 0.02,
                  bottom: size.height * 0.02,
                  left: size.width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Charging Current",
                        style:
                            TextStyle(color: Color(0xff85C48D), fontSize: 17),
                      ),
                      Positioned(
                        right: size.width * 0.17,
                        child: Text(
                          "30",
                          style: TextStyle(
                            color: Color(0xff2BB6C7),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff65AF85),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Positioned(
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.55,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Positioned(
                    left: size.width * 0.02,
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff65AF85),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Color(0xff65AF85),
                              fontSize: size.width * 0.05,
                            ),
                          ),
                          minWidth: size.width * 0.4,
                          onPressed: () {}),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.1,
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.2),
                              spreadRadius: 6,
                              blurRadius: 3)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            const Color(0xff2BB6C7),
                            const Color(0xff65AF85)
                          ],
                        ),
                      ),
                      child: MaterialButton(
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.05,
                            ),
                          ),
                          minWidth: size.width * 0.4,
                          onPressed: () {
                            Get.to(() => CarPage3());
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
